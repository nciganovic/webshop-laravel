<?php


namespace App\Http\Controllers;


use App\Models\Cart;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CartController extends BaseController
{
    public function index(){
        return view("main.pages.cart");
    }

    public function add(Request $request){
        $product_id = $request->id;
        $user_id = Auth::id();

        $active_cart = Cart::where('user_id', '=', $user_id)
            ->where('is_active', '=', 1)->first();

        if($active_cart == null){
            $active_cart = new Cart();
            $active_cart->user_id = $user_id;
            $active_cart->is_active = 1;
            $active_cart->save();
        }

        $active_cart_id =$active_cart->id;

        $find_cart = Cart::whereHas('products', function ($q) use($product_id, $active_cart_id){
            $q->where('cart_id', '=', $active_cart_id)
            ->where('product_id', '=', $product_id);
        })->first();

        if($find_cart){
            return json_encode([
                'message' => 'Item already added to cart'
            ]);
        }

        $active_cart->products()->attach(array(
            array(
                'product_id' => $product_id,
                'count' => 1),
        ));

        return json_encode([
            'product_id' => $product_id,
            'user_id' => $user_id,
            'cart' => $active_cart
        ]);
    }
}
