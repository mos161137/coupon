<?php

namespace App\Http\Controllers;
use Mail;
use DB;
use Auth;
use Illuminate\Http\Request;
use Carbon\Carbon;

class CheckpointController extends Controller
{

    public function __construct()
    {$this->middleware('auth');}

    public function index(Request $r)
    {
        $w3 = array('coupon_status','=',10000);
        $a=array('firstname','like','%'.$r->get('firstname').'%');
        $b=array('lastname','like','%'.$r->get('lastname').'%');
        $c=array('citizenid','like','%'.$r->get('citizenid').'%');
        $d=array('coupon_gen','like','%'.$r->get('coupon_gen').'%');
        
        $view['hhn']=DB::connection('ssh')
        ->table('tr_patient_fromexcel')
        ->where('hn','=',$r->hn)
        ->get()->toArray();


        
        
 
        $view['pkpay'] = DB::table('tb_coupon')
        ->join('patient','patient.id','tb_coupon.coupon_pid')
        ->join('tr_package_name','tr_package_name.uid','tb_coupon.coupon_package')
        ->where([$a,$b,$c,$d,$w3])
        ->get()->toArray();

        return view('checkpoint.index',$view);
    }
    public function search(Request $r)
    {
        // dd($r);
        // $w3 = array('coupon_status','!=',10);
        $a=array('firstname','like','%'.$r->get('firstname').'%');
        $b=array('lastname','like','%'.$r->get('lastname').'%');
        $c=array('citizenid','like','%'.$r->get('citizenid').'%');
        $d=array('coupon_gen','=',$r->get('coupon_gen'));



            $view['hhn']=DB::connection('ssh')
            ->table('tr_patient_fromexcel')
            ->where('hn','=',$r->hn)
            ->get()->toArray();






        $view['pkpay'] = DB::table('tb_coupon')
        ->join('patient','patient.id','tb_coupon.coupon_pid')
        ->join('tr_package_name','tr_package_name.uid','tb_coupon.coupon_package')
        ->where([$a,$b,$c,$d])
        ->get()->toArray();

        return view('checkpoint.index',$view);
    }



    public function store(Request $r)
    {   
        date_default_timezone_set('Asia/Bangkok');

        $view['hn_id']=$r->hn;
        $view['hn_name']=$r->hn_name;
        $view['hn_visit']=$r->hn_visit;
        $view['checkup_user']=Auth::user()->id;
        $view['coupon_status']=40;
        $view['usecoupondate']=Carbon::now()->format('Y-m-d H:i:s');
        DB::table('tb_coupon')
        ->where('coupon_id','=',$r->coupon_id)
        ->update($view);
        return redirect('checkpoint');
    }
    // public function searchhn(Request $r)
    // {
    //     $view1['hnn']=DB::connection('ssh')
    //     ->table('tr_patient_fromexcel')
    //     ->where('hn','=',$r->hn)
    //     ->get();
    //     return redirect('checkpoint.index',$view1);
    // }
}
