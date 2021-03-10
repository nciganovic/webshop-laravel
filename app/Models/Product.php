<?php


namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    public function categories(){
        return $this->belongsToMany(Category::class);
    }

    public function sizes(){
        return $this->belongsToMany(Size::class);
    }

    public function carts(){
        return $this->belongsToMany(Cart::class)->withPivot('count');
    }
}
