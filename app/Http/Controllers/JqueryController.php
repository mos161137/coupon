<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;

class JqueryController extends Controller
{

    public function index(Request $r)
    {


        if ($r->event == "show_packagedetail") {
            $package=DB::table('tr_package_name')->where('uid','=',$r->uid)->first();

            $pack['data']           = json_decode($package->item_textall, true);
            $pack['package_name']   = $package->package_name;
            $pack['total_amount']   = $package->total_amount;
            $encode = json_encode($pack, JSON_UNESCAPED_UNICODE );
            echo $encode;
        }


        if ($r->event == "add_table") {
            $price = DB::table('orderitem')->where('order_name',$r->val)->first();
            $json = json_encode($price, JSON_UNESCAPED_UNICODE );
            echo $json;
        }





        if ($r->event == "get_bill") {


            $hn = str_replace("-","",$r->hn);
            $date = explode(" ",$r->date);
            $url = "http://27.254.59.19:6099/Bill";
            // $url.= "?hn=".$hn;
            // $url.= "&date=".$date[0];
            $url.= "?hn=1899009084";
            $url.= "&date=2019-01-01";



            $ch = curl_init();
            curl_setopt($ch,CURLOPT_URL,$url);
            curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);
            $output=curl_exec($ch);
            curl_close($ch);

            $json = json_decode($output);


            foreach($json as $j){
                //$mm .= $j->bill_No;
                $mm[0] = $j->bill_ID;
                $mm[1] = $j->bill_No;
            }

            $dd = json_encode($mm);
            echo $dd;

        }




        if ($r->event == "get_numbill") {


            $log=DB::connection('ssh')
            ->table('tr_patient_fromexcel')
            ->where([
                ['fristname','=',$r->firstname],
                ['lastname','=',$r->lastname]
            ])
            ->orderby('UID','desc')
            ->first();

            //echo $log->hn;
            $date =  explode('-',$log->checkup_mobile_date);
            $indate = $date[2].'-'.$date[1].'-'.$date[0];








            $url = "http://27.254.59.19:6099/Bill";
            // $url.= "?hn=".$hn;
            // $url.= "&date=".$date[0];
            $url.= "?hn=".$log->hn;
            $url.= "&date=".$indate;



            $ch = curl_init();
            curl_setopt($ch,CURLOPT_URL,$url);
            curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);
            $output=curl_exec($ch);
            curl_close($ch);

            $json = json_decode($output);


            foreach($json as $j){
                //$mm .= $j->bill_No;
                //$mm[0] = $j->bill_ID;
                $mm = $j->bill_No;
            }

            //$dd = json_encode($mm);
            echo $mm;


        }











    }

}
