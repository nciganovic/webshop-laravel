<?php


namespace App\Http\Controllers;


use App\Models\Product;
use Illuminate\Support\Facades\Auth;

class ProductController extends BaseController
{
    public  function index($product_slug)
    {
        $this->data['product'] = Product::with('categories')->with('sizes')->where('slug', '=', $product_slug)->first();
        $this->data['auth'] = Auth::check();
        return view('main.pages.product', $this->data);
    }
}
