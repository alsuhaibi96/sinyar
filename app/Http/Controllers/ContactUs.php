<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;

use App\Mail\GetInTouchEmail;

class ContactUs extends Controller
{
    //Function to be triggered when sending an email
    public function contuctUs(Request $request){
        Validator::validate($request->all(),[
             'name'=>['required','string','min:3'],
             'email'=>['required','email'],
             'message'=>['required','string','min:7'],

        ],
    [
        'name.required'=>'This field must be filled',
        'name.string'=>'This field must be string type',
        'name.min'=>'This field should be greater than 3 letters',
        'email.required'=>'This field must be filled',
        'email.email'=>'This field must be email format',
        'message.required'=>'This field must be filled',
        'message.string'=>'This field must be string type',
        'message.min'=>'This field must be greater than 7 letters',

    ]
    );
        $data=$request;
        try{
        Mail::to('abdulrahmanalsuhiabi2017@gmail.com')->send(new GetInTouchEmail($data));
        return  redirect()->route('home')
        ->with('flash','Done Sending!');
        }
        catch(Exception $ex){
            return 'Mail fialed to be sent';
        }
    }

}