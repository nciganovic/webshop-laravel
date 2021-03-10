<?php
namespace  App\Http\Controllers;

use App\Models\Cart;
use App\Models\Category;
use Illuminate\Support\Facades\Auth;

class BaseController extends Controller
{
    public $data;

    public function __construct()
    {
        $this->data['categories'] = Category::all();

        $this->middleware(function ($request, $next) {
            $this->data['cart_count'] = $this->CountCartItems();
            return $next($request);
        });

    }

    public function CountCartItems(){
        if(Auth::check()){
            $user_id = Auth::id();
            $active_cart = Cart::where('user_id', '=', $user_id)
                ->where('is_active', '=', 1)->first();

            if($active_cart != null){
                return $active_cart->products()->count();
            }

            return 0;
        }

        return 0;
    }

}
