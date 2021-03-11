<?php


namespace App\Http\Controllers;


use App\Models\Cart;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CartController extends BaseController
{
    public function display(){
        $this->data["auth"] = Auth::check();
        if($this->data["auth"] == false){
            return redirect('/');
        }

        $active_cart = Cart::get_active_cart();

        if($active_cart == null){
            $this->data['message'] = 'Your cart is empty';
            return view("main.pages.cart", $this->data);
        }
        else{
            $this->data['products'] = $active_cart->products()->get();
            return view("main.pages.cart", $this->data);
        }
    }

    public function add(Request $request){
        $product_id = $request->id;
        $user_id = Auth::id();

        $active_cart = Cart::get_active_cart();

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

    public function remove(Request $request){
        $product_id = $request->id;
        $user_id = Auth::id();

        $active_cart = Cart::get_active_cart();

        $active_cart->products()->detach($product_id);

        return json_encode([
            'message' => "item removed from cart"
        ]);
    }

    public function update_count(Request $request){
        $product_id = $request->product_id;
        $count = $request->count;

        $active_cart = Cart::get_active_cart();

        $active_cart_id =$active_cart->id;

        $active_cart->products()->updateExistingPivot($product_id, [
            'count' => $count
        ]);

        return json_encode([
            'count' =>  $count
        ]);

    }
}
