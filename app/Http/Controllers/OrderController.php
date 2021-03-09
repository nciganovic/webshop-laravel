<?php


namespace App\Http\Controllers;


class OrderController extends BaseController
{
    public function index(){
        return view('main.pages.order');
    }
}
