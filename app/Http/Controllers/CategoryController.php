<?php


namespace App\Http\Controllers;


use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CategoryController extends  BaseController
{
    public function Index($category_slug, Request $request){

        $search = $request->search;

        if($search == null){
            $this->data['products'] = Product::whereHas('categories', function ($q) use($category_slug){
                $q->whereIn('slug', [$category_slug]);
            })->paginate(12)->fragment('products');
        }
        else{
            $this->data['products'] = Product::whereHas('categories', function ($q) use($category_slug){
                $q->whereIn('slug', [$category_slug]);
            })->where('name', 'like', '%'.$search.'%')->paginate(12)->appends(['search' => $search]);
        }


        $this->data["category"] = Category::where('slug', '=', $category_slug)->first();

        $this->data['auth'] = Auth::check();

        return view('main.pages.category', $this->data);
    }
}
