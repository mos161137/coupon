<?php

namespace App\Http\Controllers;
use DB;
use Auth;


class StationController extends Controller
{

    public function index()
    {
        $view['jobuser'] = DB::table('item')
            ->distinct('item.item_name')
            ->leftjoin('logconnectbeacon','logconnectbeacon.macbecon','item.item_mac')
            ->orderBy('rssibeacon','desc')
            ->get();
            return view('station.index',$view); 
    }
}
