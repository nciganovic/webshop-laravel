<?php


namespace App\Http\Controllers;


class ProductController extends BaseController
{
    public  function index()
    {
        return view('main.pages.product');
    }
}
