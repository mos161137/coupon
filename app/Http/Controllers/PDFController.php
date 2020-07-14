<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use PDF;

class PDFController extends Controller
{
    public function pdf()
    {

        $orders=DB::table('tb_coupon')
        ->join('patient','patient.id','tb_coupon.coupon_pid')
        ->join('tr_package_name','tr_package_name.uid','tb_coupon.coupon_package')
        ->orderby('coupon_id','desc')
        ->get();




        $pdf=PDF::loadView('pdf',['orders'=>$orders],"-L");

        //$file = PDF::loadView('emails.invoice.pdf', [] )->setPaper('a4', 'landscape'')->setWarnings(false)->output();

        return @$pdf->stream();


    }
}
