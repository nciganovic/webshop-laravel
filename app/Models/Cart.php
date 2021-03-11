<?php


namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class Cart extends Model
{
    use HasFactory;

    public function products(){
        return $this->belongsToMany(Product::class)->withPivot('count');
    }

    public static function get_active_cart(){
        $user_id = Auth::id();

        $active_cart = Cart::where('user_id', '=', $user_id)
            ->where('is_active', '=', 1)->first();

        return $active_cart;
    }
}
