<?php

namespace App\Http\Controllers;
use DB;
use Auth;
use Illuminate\Http\Request;
use Carbon\Carbon;

class CheckcashController extends Controller
{
    public function __construct()
    {$this->middleware('auth');}

    public function index()
    {
        return view('point_0');
    }


    public function store(Request $r)
    {
        date_default_timezone_set('Asia/Bangkok');
        $view['cash']=$r->total_amount;
        $view['receipt_number']=$r->receipt_number;
        // $view['coupon_gen']=$r->barcode;
        $view['receicash']=$r->sale_id;
        $view['coupon_status']=10;
        $view['receidate']=Carbon::now()->format('Y-m-d H:i:s');
        DB::table('tb_coupon')->where('coupon_id','=',$r->coupon_id)->update($view);
        
        return redirect('point_10');
    }




}
