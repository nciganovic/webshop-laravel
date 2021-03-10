<?php
namespace  App\Http\Controllers;

use App\Models\Product;
use Illuminate\Support\Facades\Auth;

class HomeController extends BaseController
{
    public function index(){
        $this->data['products'] = Product::orderBy('created_at', 'DESC')->paginate(10);
        $this->data['auth'] = Auth::check();
        return view('main.pages.index', $this->data);
    }
}
