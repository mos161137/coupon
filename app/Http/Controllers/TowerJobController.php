<?php

namespace App\Http\Controllers;

use App\User;
use DB;
use Illuminate\Http\Request;
use Session;

class TowerJobController extends Controller
{

    // public function __construct()
    // {$this->middleware('auth');}

    public function index(Request $r)
    {


    if($r->event=="check_item"){
        $item = DB::table('logconnectbeacon')->where('rssibeacon','<',40)->first();
        //echo $item->macid;
        if($item->macid=='0002' || $item->macid=='0003'){

            $it = DB::table('item')->where([
                ['item_mac','=',$item->macbecon],
                ['item_status','=','0']
            ])->first();
            
            echo $item->macid;
            echo "#";
            echo $it->item_name;

        }



    }



    if($r->event=="tower1" || $r->event=="tower2" || $r->event=="tower3"){
        $rand = rand(1,10);
        $tower = "0002";
        if($r->event=="tower2"){$tower = "0002";}
        if($r->event=="tower3"){$tower = "0003";}   
        if($r->event=="tower1"){$tower = "0001";} 

        // $jobuser = DB::table('users')
        //     ->leftjoin('logconnectbeacon','logconnectbeacon.macbecon','users.item_mac')
        //     ->where([
        //         ['user_type', '=', "staff"],
        //         ['item_lastpoint', 'like', "%".$tower."%"],
        //         ['macid','=',$tower]
        //     ])
        //     ->orderBy('rssibeacon')
        //     ->get();

        $item= DB::table('item')
            ->distinct('item.item_name')
            ->leftjoin('logconnectbeacon','logconnectbeacon.macbecon','item.item_mac')
            ->where([
                ['item_lastpoint', 'like', "%".$tower."%"],
            ])
            ->orderBy('rssibeacon','desc')
            ->get();







        foreach($item as $j)
        {

        $c = (-1*$j->rssibeacon)/10;
        echo "
        <tr>
            <td>
                {$j->id}
            </td>
            <td>
                    <a class='staff' staff='{$j->item_mac}'>
                    {$j->item_name}
                    </a>
            </td>
            <td>
                ".$c." M
            </td>
            <td>
                <button 
                class='btn btn-success'  
                data-toggle='modal' 
                data-target='#myModal' 
                type='submit' 
                staffname='".$j->item_mac."'
                id='".$j->item_id."'
                >
                    ค้นหา
                </button>
            </td>
        </tr>
        ";
        }

    }



    if($r->event=="staff"){
        $item = DB::table('item')->where('item_mac','=',$r->item_mac)->first();
        echo $item->item_lastpoint;
    }



    }



    public function update(Request $request, $id)
    {

    }

    public function create()
    {

    }

    public function store(Request $r)
    {

    }

    public function position(Request $r)
    {

    }


}
