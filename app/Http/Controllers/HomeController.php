<?php

namespace App\Http\Controllers;
use DB;
use Auth;


class HomeController extends Controller
{
    public function __construct()
    {$this->middleware('auth');}

    public function index()
    {


        if(Auth::user()->user_type=="admin"){
            return redirect('user');
        }

        if(Auth::user()->user_type=="sale"){
            return redirect('dashboard');
        }


        if(Auth::user()->user_type=="accounting"){

            return redirect('accounting');
        }

        if(Auth::user()->user_type=="checkup"){
            return redirect('checkpoint');
        }


    }



}
