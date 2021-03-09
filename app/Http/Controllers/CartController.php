<?php


namespace App\Http\Controllers;


class CartController extends BaseController
{
    public function index(){
        return view("main.pages.cart");
    }
}
