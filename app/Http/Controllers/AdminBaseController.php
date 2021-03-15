<?php


namespace App\Http\Controllers;


use App\Models\Role;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class AdminBaseController extends Controller
{
    protected $data = [];

    public function GetAdmin()
    {
        if(Auth::check()){
            $user = User::where('id', '=', Auth::id())->first();
            if($user != null){
                $role = Role::where('id', '=', $user->role_id)->first();
                if($role->name == "admin"){
                    return $user;
                }
                else{
                    return null;
                }
            }
            else{
                return null;
            }
        }
        else{
            return null;
        }
    }
}
