<?php


namespace App\Http\Controllers;


use App\Models\Product;
use Illuminate\Support\Facades\Auth;

class CategoryController extends  BaseController
{
    public function Index($category_slug){

        $this->data['products'] = Product::whereHas('categories', function ($q) use($category_slug){
           $q->whereIn('slug', [$category_slug]);
        })->get();
        $this->data['auth'] = Auth::check();
        return view('main.pages.category', $this->data);
    }
}
