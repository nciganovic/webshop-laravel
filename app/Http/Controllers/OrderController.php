<?php


namespace App\Http\Controllers;


use Illuminate\Support\Facades\Auth;

class OrderController extends BaseController
{
    public function index(){
        $this->data["auth"] = Auth::check();
        if($this->data["auth"] == false){
            return redirect('/');
        }

        return view('main.pages.order', $this->data);
    }
}
