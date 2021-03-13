<?php


namespace App\Http\Controllers;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;

class ContactUsController extends BaseController
{
    public function index(){
        $this->data['auth'] = Auth::check();
        return view('main.pages.contactus', $this->data);
    }

    public function send_email(Request $request){
        $this->validate($request, [
            'email' => 'required|email',
            'subject' => 'min:5|max:100',
            'message' => 'min:5',
        ]);

        $this->data['auth'] = Auth::check();
        $this->data['mail_result'] = 1;

        Mail::send('main.pages.contactus', $this->data, function($message) use ($request) {
            $message->from($request->email, "Web Application");

            $message->to("nciganovic99@gmail.com", "")
                ->subject($request->subject);

        });
    }
}
