<?php
namespace  App\Http\Controllers;

use App\Models\Product;
use Illuminate\Support\Facades\Auth;

class HomeController extends BaseController
{
    public function index(){
        $this->data['products'] = Product::orderBy('created_at', 'DESC')->paginate(10);

        return view('main.pages.index', $this->data);
    }
}
