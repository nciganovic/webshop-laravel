<?php
namespace  App\Http\Controllers;

use App\Models\Category;
use Illuminate\Support\Facades\Auth;

class BaseController extends Controller
{
    public $data;

    public function __construct()
    {
        $this->data['categories'] = Category::all();
    }


}
