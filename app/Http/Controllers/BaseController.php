<?php
namespace  App\Http\Controllers;

use App\Models\Cart;
use App\Models\Category;
use App\Models\Role;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class BaseController extends Controller
{
    public $data;

    public function __construct()
    {
        $this->data['categories'] = Category::all();

        $this->middleware(function ($request, $next) {
            $this->data['cart_count'] = $this->CountCartItems();
            $this->data['is_admin'] = $this->IsAdmin();
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

    private function IsAdmin(){
        $user = User::where('id', '=', Auth::id())->first();
        if($user != null){
            $role = Role::where('id', '=', $user->role_id)->first();
            if($role != null){
                if($role->name == 'admin'){
                    return true;
                }
                return false;
            }
            return  false;
        }
        return false;
    }

}
