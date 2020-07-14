<?php

namespace App\Http\Controllers;
use DB;
use Auth;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Mail;

class TestController extends Controller
{

    public function index()
    {

        $a = DB::table('users')->get();
        dd($a);
    }
    public function store(Request $r)
    {

    }
    public function show(Request $r)
    {

    }




}
