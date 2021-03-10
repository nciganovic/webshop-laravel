<?php


namespace App\Http\Controllers;


use App\Models\Cart;
use App\Models\Product;
use Illuminate\Support\Facades\Auth;

class ProductController extends BaseController
{
    public  function index($product_slug)
    {
        $this->data['product'] = Product::with('categories')->with('sizes')->where('slug', '=', $product_slug)->first();
        $this->data['auth'] = Auth::check();
        $this->data['is_product_in_cart'] = $this->IsProductAddedToCart($this->data['product']->id, Auth::id());


        return view('main.pages.product', $this->data);
    }

    public function IsProductAddedToCart($product_id, $user_id)
    {
        $active_cart = Cart::where('user_id', '=', $user_id)
            ->where('is_active', '=', 1)->first();

        $active_cart_id =$active_cart->id;

        if($active_cart != null){
            $find_cart = Cart::whereHas('products', function ($q) use($product_id, $active_cart_id){
                $q->where('cart_id', '=', $active_cart_id)
                    ->where('product_id', '=', $product_id);
            })->first();

            if($find_cart != null){
                return true;
            }

            return  false;
        }

        return false;
    }
}
