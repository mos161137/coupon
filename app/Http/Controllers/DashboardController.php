<?php

namespace App\Http\Controllers;
use DB;
use Auth;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Mail;

class DashboardController extends Controller
{
    public function __construct()
    {$this->middleware('auth');}

    public function index(Request $r)
    {

        return view('sell.dashboard');
    }
    public function store(Request $r)
    {
        $data['email'] = $r['packageid'];
        $data['barcode'] = $r['barcode'];
        $this->sendemail($data);

        // $posts = DB::table('patient')->where('firstname','=','')->first();
        date_default_timezone_set('Asia/Bangkok');
        $view['receicash']=$r->sale_id;
        $view['coupon_status']=40;
        // $view['coupon_gen']=$r->barcode;
        $view['sendemail_date']=Carbon::now()->format('Y-m-d H:i:s');
        DB::table('tb_coupon')
        ->where('coupon_id','=',$r->coupon_id)
        ->update($view);
        return redirect('sell.dashboard');
    }
    public function show(Request $r)
    {
        $data['email'] = $r['packageid'];
        $data['barcode'] = $r['coupon_gen'];
        $this->sendemail($data);

        // $posts = DB::table('patient')->where('firstname','=','')->first();
        date_default_timezone_set('Asia/Bangkok');
        $view['receicash']=$r->sale_id;
        $view['coupon_status']=20;
        // $view['coupon_gen']=$r->coupon_gen;
        $view['usecoupondate']=Carbon::now()->format('Y-m-d H:i:s');
        DB::table('tb_coupon')
        ->where('coupon_id','=',$r->coupon_id)
        ->update($view);
        return redirect('dashboard');
    }
    public function modal1(Request $r)
    {

        $data['email'] = $r['packageid'];
        $data['barcode'] = $r['coupon_gen'];
        $this->sendemail($data);

        // $posts = DB::table('patient')->where('firstname','=','')->first();
        date_default_timezone_set('Asia/Bangkok');
        $view['coupon_saleoutdate']=Carbon::now()->format('Y-m-d H:i:s');
        $view['coupon_status']=0;
        // $view['coupon_gen']=$r->coupon_gen;
        $view['usecoupondate']=Carbon::now()->format('Y-m-d H:i:s');
        DB::table('tb_coupon')
        ->where('coupon_id','=',$r->coupon_id)
        ->update($view);
        return redirect('dashboard');
    }

    protected function sendemail(array $data)
	{
        return Mail::send('emails', $data, function($message) use ($data)
        {
            $message->from('no-reply@thammasat.com', "SAMITIVEJ SRIRACHA");
            $message->subject("Registation");
            $message->to($data['email']);
        });
	}




}
