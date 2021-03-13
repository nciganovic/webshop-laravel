<?php


namespace App\Http\Controllers;


use Illuminate\Support\Facades\Auth;

class ContactUsController extends BaseController
{
    public function index(){
        $this->data['auth'] = Auth::check();

        return view('main.pages.contactus', $this->data);
    }
}
