<?php

namespace App\Http\Controllers;

use App\User;
use DB;
use Illuminate\Http\Request;
use Session;

class ItemController extends Controller
{

    // public function __construct()
    // {$this->middleware('auth');}

    public function index(Request $r)
    {
        //$monthname = DB::table('dd_month')->get();

        $view['item1'] = DB::table('item')
            ->leftjoin('location','location.location_code','item.item_lastpoint')
            ->where('item_type','=','1')
            ->get();
        $view['item2'] = DB::table('item')
            ->leftjoin('location','location.location_code','item.item_lastpoint')
            ->where('item_type','=','2')
            ->get();

        return view('item/index', $view);
    }


    public function store(Request $r)
    {
        DB::table('item')->insert([
            'item_type' => $r->item_type,
            'item_num'  => $r->item_num,
            'item_mac'  => $r->item_mac,
            'item_date' => $r->item_date,
        ]);
        return redirect('item');
    }


    public function update(Request $r, $id)
    {

    }

    public function destroy(Request $r)
    {
        DB::table('item')->where('item_id','=',$r->item_id)->delete();

        return redirect('item');
    }

}
