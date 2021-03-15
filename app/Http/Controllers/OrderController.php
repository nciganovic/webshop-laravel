<?php


namespace App\Http\Controllers;


use App\Models\Cart;
use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class OrderController extends BaseController
{
    public function order_get(){
        $this->data["auth"] = Auth::check();
        if($this->data["auth"] == false){
            return redirect('/');
        }

        $active_cart = Cart::get_active_cart();

        if($active_cart == null){
            return redirect('/');
        }
        else if(count($active_cart->products) == 0){
            return redirect('/');
        }

        $this->data['products'] = $active_cart->products()->get();

        $this->data["sum"] = $this->calculate_sum_total($this->data['products']);

        return view('main.pages.order', $this->data);
    }

    public function order_post(Request $request){
        $this->validate($request, [
            'country' => 'required|max:30|alpha',
            'city' => 'required|max:30|alpha',
            'postal_code' => 'required|numeric',
            'phone_number' => 'required|numeric'
        ]);

        $active_cart = Cart::get_active_cart();

        $order = new Order();
        $order->cart_id = $active_cart->id;
        $order->postal_code = $request->postal_code;
        $order->city = $request->city;
        $order->phone_number = $request->phone_number;
        $order->country = $request->country;
        $order->save();

        $active_cart->is_active = false;
        $active_cart->save();

        $this->data["auth"] = Auth::check();
        if($this->data["auth"] == false){
            return redirect('/');
        }

        return view('main.pages.order-success', $this->data);
    }

    private function calculate_sum_total($products){
        $sum = 0;
        for($i = 0; $i < count($products); $i++){
            if($products[$i]->sale == 0){
                $sum += $products[$i]->price * $products[$i]->getOriginal('pivot_count');
            }
            else{
                $sum += ($products[$i]->price - (($products[$i]->price / 100) * $products[$i]->sale))* $products[$i]->getOriginal('pivot_count');
            }
        }
        return $sum;
    }
}
