<?php


namespace App\Http\Controllers;


use App\Models\Category;
use App\Models\Product;
use App\Models\Size;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class AdminController extends AdminBaseController
{
    public function CheckAdmin(){
        $this->data['user'] = $this->GetAdmin();
        if($this->data['user'] == null){
            return false;
        }
        else{
            return  true;
        }
    }

    public function index(){
        if(!$this->CheckAdmin()){
            return redirect()->route('home');
        }

        return view('admin.page.index', $this->data);
    }

    public function  products_show(){
        $this->data["products"] = Product::where('id', '>', '0')->paginate(15);
        return view('admin.page.showproducts', $this->data);
    }

    public function  product_create_get(){
        $this->data["product"] = new Product();
        $this->data['action'] = 'create';
        $this->data['categories'] = Category::all();
        $this->data['sizes'] = Size::all();
        return view('admin.page.product-form', $this->data);
    }

    public function product_create_post(Request $request){
        $this->validate($request, [
           'name' => 'required',
           'price' => 'required|numeric|min:0',
           'description' => 'required|max:250',
            'image' => 'required|mimes:jpeg,png,jpg|max:1024',
            'sale' => 'numeric|min:0'
        ]);

        $extension = $request->image->extension();
        $request->image->storeAs('/public', time().".".$extension);
        $url = Storage::url(time().".".$extension);

        $product = new Product();
        $product->name = $request->name;
        $product->price = $request->price;
        $product->description = $request->description;
        $product->image = $url;
        $product->slug = str_replace(" ", "_", $product->name);
        $product->sale = $request->sale;
        $product->save();

        $product->categories()->attach($request->category_id);
        $product->sizes()->attach($request->size_id);

        return redirect()->route('products_show');
    }

    public function product_edit_get($id){
        $this->data['action'] = 'edit';
        $this->data['product'] = Product::where('id', '=', $id)->first();
        $this->data['categories'] = Category::all();
        $this->data['sizes'] = Size::all();
        return view('admin.page.product-form', $this->data);
    }

    public function product_edit_post(Request $request, $id){
        $old_product = Product::where('id', '=', $id)->first();

        $this->validate($request, [
            'name' => 'required',
            'price' => 'required|numeric|min:0',
            'description' => 'required|max:250',
            'sale' => 'numeric|min:0'
        ]);

        if($request->image != null){
            $this->validate($request, [
                'image' => 'required|mimes:jpeg,png,jpg|max:1024',
            ]);

            $extension = $request->image->extension();
            $request->image->storeAs('/public', time().".".$extension);
            $url = Storage::url(time().".".$extension);

            $old_product->image = $url;
        }

        $old_product->name = $request->name;
        $old_product->price = $request->price;
        $old_product->description = $request->description;
        $old_product->slug = str_replace(" ", "_", $old_product->name);
        $old_product->sale = $request->sale;
        $old_product->save();

        $old_product->categories()->sync($request->category_id);
        $old_product->sizes()->sync($request->size_id);

        return redirect()->route('products_show');
    }

    public function product_delete(Request $request){
        Product::where('id', '=', $request->id)->delete();
        return response()->json(['message' => 'success']);
    }
}
