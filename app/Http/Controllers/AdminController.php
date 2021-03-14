<?php


namespace App\Http\Controllers;


use App\Models\Product;

class AdminController extends AdminBaseController
{
    public function index(){
        return view('admin.page.index', $this->data);
    }

    public function  products_show(){
        $this->data["products"] = Product::where('id', '>', '0')->paginate(15);
        return view('admin.page.showproducts', $this->data);
    }
}
