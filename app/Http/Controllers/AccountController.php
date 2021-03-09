<?php


namespace App\Http\Controllers;

use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AccountController extends BaseController
{
    public function register_get(){
        $this->data["auth"] = Auth::check();

        if($this->data["auth"]){
            return redirect('/');
        }

        return view('main.pages.register', $this->data);
    }

    public function  register_post(Request $request){
        $this->validate($request, [
            'first_name' => 'required|max:25|alpha',
            'last_name' => 'required|max:25|alpha',
            'address' => 'required|max:30',
            'email' => 'required|unique:users|email',
            'password' => 'required|confirmed|min:8',
        ]);

        $user_role = Role::where('name', '=', 'user')->first();
        $request->role_id = $user_role->id;

        $user = new User();
        $user->first_name = $request->first_name;
        $user->last_name = $request->last_name;
        $user->address = $request->address;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
        $user->role_id = $request->role_id;

        $user->save();

        $this->data['auth'] = false;
        return view('main.pages.register-success', $this->data);
    }

    public function login_get(){
        $this->data["auth"] = Auth::check();

        if($this->data["auth"]){
            return redirect('/');
        }

        return view('main.pages.login', $this->data);
    }

    public function login_post(Request $request){
        $credentials = $request->only('email', 'password');

        $remember = false;
        if($request->remember_me){
            $remember = true;
        }

        if(Auth::attempt(['email' => $credentials["email"], 'password' => $credentials["password"]], $remember)) {
            return redirect('/');
        }

        return back()->withErrors([
            'email' => 'The provided credentials do not match our records.',
        ]);
    }

    public function logout(Request $request)
    {
        Auth::logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/');
    }

}
