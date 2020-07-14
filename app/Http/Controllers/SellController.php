<?php

namespace App\Http\Controllers;
use DB;
use Auth;
use Illuminate\Http\Request;
use Carbon\Carbon;

class SellController extends Controller
{
    public function __construct()
    {$this->middleware('auth');}

    public function index()
    {
        $view['package'] = DB::table('tr_package_name')
        ->orderby('uid')
        ->get();


        $w1 = array('coupon_saleuser','=',Auth::user()->id);
        $w2 = array('coupon_status','=',0);
        $w3 = array('coupon_status','=',10);

        $view['pkwait'] = DB::table('tb_coupon')
        ->where([$w1,$w2])
        ->get();


        $view['pkpay'] = DB::table('tb_coupon')
        ->where([$w1,$w3])
        ->get();




        return view('sell.index',$view);

    }
    public function store(Request $r)
    {
        dd($r);
    }

    public function pay(Request $r)
    {
        if((isset($r->search_name))||(isset($r->date_start))||(isset($r->date_end))){
            
                if(($r->date_start==null)&&($r->date_end==null)){
                    $w = array('coupon_saleoutdate','like',"%");
                    $view['showall'] = DB::table('patient')
                    ->join('tb_coupon','tb_coupon.coupon_pid','patient.id')
                    ->join('tr_package_name','tr_package_name.uid','tb_coupon.coupon_package')
                    ->where([['firstname','=',$r->search_name],['coupon_status','=','0'],$w])
                    ->get();
                }else if($r->search_name==null){
                    $from = date($r->date_start . '00:00:00', time());
                    $to = date($r->date_end . '00:00:00', time());
                    $view['showall'] = DB::table('patient')
                    ->join('tb_coupon','tb_coupon.coupon_pid','patient.id')
                    ->join('tr_package_name','tr_package_name.uid','tb_coupon.coupon_package')
                    ->where('coupon_status','=','0')
                    ->whereBetween('coupon_saleoutdate', array($from, $to))
                    ->get();
                }else if($r->date_end==null){
                    $from = date($r->date_start . '00:00:00', time());
                    $view['showall'] = DB::table('patient')
                    ->join('tb_coupon','tb_coupon.coupon_pid','patient.id')
                    ->join('tr_package_name','tr_package_name.uid','tb_coupon.coupon_package')
                    ->where([['firstname','=',$r->search_name],['coupon_status','=','0'],['coupon_saleoutdate','=',$from]])
                    ->get();
                }else if($r->date_start==null){
                    $from = date($r->date_end . '00:00:00', time());
                    $view['showall'] = DB::table('patient')
                    ->join('tb_coupon','tb_coupon.coupon_pid','patient.id')
                    ->join('tr_package_name','tr_package_name.uid','tb_coupon.coupon_package')
                    ->where([['firstname','=',$r->search_name],['coupon_status','=','0'],['coupon_saleoutdate','=',$from]])
                    ->get();
                }else if(($r->search_name==null)&&($r->date_end==null)){
                    $from = date($r->date_start . '00:00:00', time());
                    $view['showall'] = DB::table('patient')
                    ->join('tb_coupon','tb_coupon.coupon_pid','patient.id')
                    ->join('tr_package_name','tr_package_name.uid','tb_coupon.coupon_package')
                    ->where([['coupon_status','=','0'],['coupon_saleoutdate','=',$from]])
                    ->get();
                }else if(($r->search_name==null)&&($r->date_start==null)){
                    $from = date($r->date_end . '00:00:00', time());
                    $view['showall'] = DB::table('patient')
                    ->join('tb_coupon','tb_coupon.coupon_pid','patient.id')
                    ->join('tr_package_name','tr_package_name.uid','tb_coupon.coupon_package')
                    ->where([['coupon_status','=','0'],['coupon_saleoutdate','=',$from]])
                    ->get();
                }else{
                    $view = "<font color=red>ไม่ม่ข้อมูลตรงกับที่หา</font>";
                }

        }else{
            $view['showall'] = DB::table('tb_coupon')
            ->join('patient','patient.id','tb_coupon.coupon_pid')
            ->join('tr_package_name','tr_package_name.uid','tb_coupon.coupon_package')
            ->where('coupon_status','=','0')
            ->orderby('coupon_id','desc')
            ->get();
        }

        return view('sell.pay',$view);
    }

    public function pay_0(Request $r)
    {

        date_default_timezone_set('Asia/Bangkok');
        $view['cash']=$r->total_amount;
        $view['receipt_number']=$r->receipt_number;
        // $view['coupon_gen']=$r->barcode;
        $view['receicash']=$r->sale_id;
        $view['coupon_status']=10;
        $view['receidate']=Carbon::now()->format('Y-m-d H:i:s');
        DB::table('tb_coupon')->where('coupon_id','=',$r->coupon_id)->update($view);
        
        return redirect('pay');
    }

}
