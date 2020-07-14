<?php
namespace App\Http\Controllers;
use DB;
use Auth;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Excel;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use App\Exports\UserExport;
use App\User;
use Rap2hpoutre\FastExcel\FastExcel;

class AccountingController extends Controller
{
    public function __construct(){$this->middleware('auth');}

    public function index(Request $r)
    {
        if(isset($r->select_user)){
            $whereUser = array('id','=',$r->select_user);
        }else{
            $whereUser = array('id','like',"%");
        }
        if($r->select_date==""){
            $whereDate = array('coupon_saleoutdate','like',"%");
        }else{
            $ex = explode('/',$r->select_date);
            $searchdate = $ex[1].'-'.$ex[0];
            $whereDate = array('coupon_saleoutdate','like',$searchdate."%");
        }
        $view['user_sc'] = DB::table('users')
        ->join('tb_coupon','tb_coupon.coupon_saleuser','users.id')
        ->join('tr_package_name','tr_package_name.uid','tb_coupon.coupon_package')
        ->where([$whereUser,$whereDate])
        ->get();
        return view('accounting.status.index',$view);
    }

    public function store(Request $r)
    {

        date_default_timezone_set('Asia/Bangkok');
        $view['invoice_number']=$r->invoice_number;
        $view['receibill']=$r->sale_id;
        $view['coupon_status']=50;
        $view['bill_date_use']=Carbon::now()->format('Y-m-d H:i:s');
        DB::table('tb_coupon')->where('coupon_id','=',$r->coupon_id)->update($view);

        return redirect("pdf1?couponid=$r->coupon_id");
    }
    public function point_0(Request $r)
    {
        if(isset($r->excel)){
            $excel = $this->excel(0,'coupon_saleoutdate','firstname',$r->search_name,$r->date_start,$r->date_end);
            return (new FastExcel($excel))->download('file.xlsx');
        }

        $view = $this->search($r->search_name,$r->date_start,$r->date_end,0,'firstname','coupon_saleoutdate');
        return view('accounting.status.point_0',$view);
    }

    public function point_10(Request $r)
    {
        if(isset($r->excel)){
            $excel = $this->excel(10,'receidate','firstname',$r->search_name,$r->date_start,$r->date_end);
            return (new FastExcel($excel))->download('file.xlsx');
        }
        $view = $this->search($r->search_name,$r->date_start,$r->date_end,10,'firstname','receidate');
        return view('accounting.status.point_10',$view);
    }

    public function point_20(Request $r)
    {
        if(isset($r->excel)){
            $excel = $this->excel(20,'receidate','firstname',$r->search_name,$r->date_start,$r->date_end);
            return (new FastExcel($excel))->download('file.xlsx');
        }
        $view = $this->search($r->search_name,$r->date_start,$r->date_end,20,'firstname','receidate');
        return view('accounting.status.point_20',$view);
    }

    public function point_40(Request $r)
    {
        if(isset($r->excel)){
            $excel = $this->excel(40,'usecoupondate','hn_name',$r->search_name,$r->date_start,$r->date_end);
            return (new FastExcel($excel))->download('file.xlsx');
        }
        $view = $this->search($r->search_name,$r->date_start,$r->date_end,40,'hn_name','usecoupondate');
        return view('accounting.status.point_40',$view);
    }

    public function point_50(Request $r)
    {

        if(isset($r->excel)){
            $excel = $this->excel(50,'bill_date_use','hn_name',$r->search_name,$r->date_start,$r->date_end);
            return (new FastExcel($excel))->download('file.xlsx');
        }

        $view = $this->search($r->search_name,$r->date_start,$r->date_end,50,'hn_name','bill_date_use');
        return view('accounting.status.point_50',$view);
    }

    public function search ($search_name,$search_start,$search_end,$status,$fieldName,$fieldDate){
        $whereStatus = array('coupon_status','=',$status);

        if(isset($search_name)){
            $wherePatient = array($fieldName,'like','%'.$search_name.'%');
        }else{
            $wherePatient = array($fieldName,'like','%');
        }

        if(isset($search_start) && isset($search_end)){
            $from   = date($search_start . ' 00:00:00', time());
            $to     = date($search_end . ' 23:59:59', time());
        }

        if(!isset($search_start) && !isset($search_end)){
            $from   = '2000-01-01 00:00:00';
            $to     = Carbon::now();
        }

        if(!isset($search_start) && isset($search_end)){
            $from   = date($search_end . ' 00:00:00', time());
            $to     = date($search_end . ' 23:59:59', time());
        }

        if(isset($search_start) && !isset($search_end)){
            $from   = date($search_start . ' 00:00:00', time());
            $to     = date($search_start . ' 23:59:59', time());
        }

        $view['showall'] = DB::table('tb_coupon')
        ->join('patient','tb_coupon.coupon_pid','patient.id')
        ->join('tr_package_name','tr_package_name.uid','tb_coupon.coupon_package')
        ->where([$whereStatus,$wherePatient])
        ->whereBetween($fieldDate, array($from, $to))
        ->orderby('coupon_id','desc')
        ->get();
        return $view;
    }
    public function modal2(Request $r)
    {
        date_default_timezone_set('Asia/Bangkok');
        $view['receicash']=$r->sale_id;
        $view['coupon_status']=20;
        // $view['coupon_gen']=$r->barcode;
        $view['sendemail_date']=Carbon::now()->format('Y-m-d H:i:s');
        DB::table('tb_coupon')
        ->where('coupon_id','=',$r->coupon_id)
        ->update($view);
        return redirect('point_20');
    }

    function excel($status,$fieldDate,$fieldName,$search_name,$search_start,$search_end)
    {
        //dd($status);

        $whereStatus = array('coupon_status','=',$status);

        if(isset($search_name)){
            $wherePatient = array($fieldName,'like','%'.$search_name.'%');
        }else{
            $wherePatient = array($fieldName,'like','%');
        }

        if(isset($search_start) && isset($search_end)){
            $from   = date($search_start . ' 00:00:00', time());
            $to     = date($search_end . ' 23:59:59', time());
        }

        if(!isset($search_start) && !isset($search_end)){
            $from   = '2000-01-01 00:00:00';
            $to     = Carbon::now();
        }

        if(!isset($search_start) && isset($search_end)){
            $from   = date($search_end . ' 00:00:00', time());
            $to     = date($search_end . ' 23:59:59', time());
        }

        if(isset($search_start) && !isset($search_end)){
            $from   = date($search_start . ' 00:00:00', time());
            $to     = date($search_start . ' 23:59:59', time());
        }

        $coupon_data = DB::table('tb_coupon')
        ->join('patient','tb_coupon.coupon_pid','patient.id')
        ->join('tr_package_name','tr_package_name.uid','tb_coupon.coupon_package')
        ->where([$whereStatus,$wherePatient])
        ->whereBetween($fieldDate, array($from, $to))
        ->orderby('coupon_id','desc')
        ->get()
        ->toArray();

        //dd($coupon_data);

        foreach ($coupon_data as $coupon) {
            if($status==0 || $status==10 || $status==20){
                $coupon_array[] = array(
                    'ชื่อ - นามสกุล' => $coupon->firstname.' '.' '.$coupon->lastname,
                    'Package'   => $coupon->package_name,
                    'วันที่'    => $coupon->$fieldDate,
                    'ราคา'    => number_format($coupon->cash)
                );
            }

            if($status==40){
                $coupon_array[] = array(
                    'ชื่อ - นามสกุล' => $coupon->hn_name,
                    'Package'   => $coupon->package_name,
                    'เลขที่ใบเสร็จ'  => $coupon->receipt_number,
                    'วันที่'    => $coupon->$fieldDate,
                    'ราคา'    => number_format($coupon->cash)
                );
            }

            if($status==50){
                $coupon_array[] = array(
                    'ชื่อ - นามสกุล'   => $coupon->hn_name,
                    'Package'       => $coupon->package_name,
                    'เลขที่ใบเสร็จ'    => $coupon->invoice_number,
                    'วันที่'           => $coupon->$fieldDate,
                    'ราคา'              => number_format($coupon->cash)
                );
            }

        }
        return $collection = collect($coupon_array);
    }

}
