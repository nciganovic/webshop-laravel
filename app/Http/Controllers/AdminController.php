<?php


namespace App\Http\Controllers;


use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class AdminController extends AdminBaseController
{
    public function index(){
        return view('admin.page.index', $this->data);
    }

    public function  products_show(){
        $this->data["products"] = Product::where('id', '>', '0')->paginate(15);
        return view('admin.page.showproducts', $this->data);
    }

    public function  product_create_get(){
        return view('admin.page.productcreate', $this->data);
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
    }
}
