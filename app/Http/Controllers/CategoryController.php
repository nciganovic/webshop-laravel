<?php


namespace App\Http\Controllers;


class CategoryController extends  BaseController
{
    public function Index(){
        return view('main.pages.category');
    }
}
