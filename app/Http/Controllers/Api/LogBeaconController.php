<?php

namespace App\Http\Controllers\Api;
use Illuminate\Http\Request;
use DB;

class LogBeaconController extends Controller
{

    public function index(Request $r)
    {
        $beacon = DB::table('logconnectbeacon')
        ->leftjoin('users','users.item_mac','logconnectbeacon.macbecon')
        ->where('rssibeacon','<',50)
        ->orderby('rssibeacon','asc')->paginate(1);
        return response()->json($beacon);
    }

    public function store(Request $r)
    {
        if($r->event=="patient_update" || $r->event=="patient_insert"){
            $val['hn']              = $r->hn;
            $val['type']            = $r->type;
            $val['citizen']         = $r->citizen;
            $val['firstname']       = $r->firstname;
            $val['lastname']        = $r->lastname;
            $val['nickname']        = $r->nickname;
        }

        if($r->event=="patient_insert"){
            DB::table('patient')->insert($val);
        }

        if($r->event=="patient_update"){
            DB::table('patient')->where('id','=',$r->patientid)->update($val);
        }

        if($r->event=="disable_patient"){
            $val['status'] = '99';
            DB::table('patient')->where('id','=',$r->patientid)->update($val);
        }

        if($r->event=="search_patient"){
            $patient = DB::table('patient')->where([
                ['firstname','like','%'.$r->searchtxt.'%'],
                ['status','!=','99']
            ])->orderby('id','desc')->paginate(3);
            return response()->json($patient);
        }

        if($r->event=="check_namesame"){
            $count = DB::table('patient')->where([
                ['firstname','=',$r->firstname],
                ['lastname','=',$r->lastname]
            ])->count();
            return $count; 
        }

        $beacon = DB::table('logconnectbeacon')->where('rssibeacon','>',-30)->orderby('id','desc')->paginate(3);
        return response()->json($beacon);
    }

    public function show($id)
    {
        $beacon = DB::table('beacon')->where('id','=',$id)->first();
        return response()->json($beacon);
    }

}