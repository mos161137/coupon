<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Hash;
use Carbon\Carbon;
use Auth;

class SelectpackageController extends Controller
{

    public function index(Request $r)
    {
        $view['package'] = DB::table('tr_package_name')
        ->orderby('uid')
        ->get();

        return view('selectpackage.index',$view);
        //return response()->json($users);
    }

    public function store(Request $r)
    {
        date_default_timezone_set("Asia/Bangkok");

        $val['citizenid']=$r->citizenid;
        $val['prefixname']=$r->prefixname;
        $val['religion']=$r->religion;
        $val['birthdate']=$r->birthyear."-".$r->birthmonth."-".$r->birthdate;
        $val['firstname']=$r->firstname;
        $val['lastname']=$r->lastname;
        $val['address']=$r->address;
        DB::table('patient')->insert($val);
        $pid = DB::getPdo()->lastInsertId();
        //dd($id);
        $val=array();
        $val['coupon_package']   =$r->package_id;
        $val['coupon_saleuser'] =Auth::user()->id;
        $val['coupon_pid']      =$pid;
        $val['coupon_saleoutdate']=Carbon::now()->format('Y-m-d H:i:s');
        $val['coupon_status']=0;
        $val['coupon_codecheck']=
        md5($val['coupon_package'].$val['coupon_saleuser'].$val['coupon_pid'].$val['coupon_saleoutdate']);
        DB::table('tb_coupon')->insert($val);
        return redirect('');


        if($r->event=="userdata"){
            $user = DB::table('users')->where('id','=',$r->uid)->paginate(1);
            return response()->json($user);
        }

        if($r->event=="itemall"){
            $item = DB::table('item')
            ->join('logconnectbeacon','logconnectbeacon.macbecon','item.item_mac')
            ->where([
                ['item_status','=','0'],
                ['rssibeacon','<',60]
            ])
            ->distinct()
            ->paginate(20);

            return response()->json($item);
        }

        if($r->event=="item_out"){
            $val['item_status'] = '1';
            $val['item_user']   = $r->uid;
            DB::table('item')->where('item_id','=',$r->itemID)->update($val);

            $val = array();
            $val['lend_uid']    = $r->uid;
            $val['lend_itemID'] = $r->itemID;
            $val['lend_timeout']= date('Y-m-d H:s:i');
            DB::table('item_lend')->insert($val);
        }

        if($r->event=="item_in"){
            $val['item_status'] = '0';
            $val['item_user']   = "";
            DB::table('item')->where('item_id','=',$r->itemID)->update($val);

            $lend = DB::table('item_lend')->where([
                ['lend_uid','=',$r->uid],
                ['lend_itemID','=',$r->itemID]
            ])->orderby('lend_id','desc')
            ->first();

            $val = array();
            $val['lend_timein'] = date('Y-m-d H:s:i');
            DB::table('item_lend')->where('lend_id','=',$lend->lend_id)->update($val);

        }

        if($r->event=="user_getitem"){
            $user_getitem = DB::table('item')
            ->join('logconnectbeacon','logconnectbeacon.macbecon','item.item_mac')
            ->where([
                //['macid','=','0001'],
                ['item_status','=','1'],
                ['item_user','=',$r->uid]
            ])->paginate(20);
            return response()->json($user_getitem);
        }

        if($r->event=="lenditemall"){
            $item = DB::table('item_lend')
            ->leftjoin('item','item.item_id','item_lend.lend_itemID')
            ->leftjoin('users','users.id','item_lend.lend_uid')
            ->select('item_lend.*','users.name as name','item.item_mac as lenditem_mac','item.*')
            ->orderby('lend_id','desc')
            ->paginate(100);
            return response()->json($item);
        }

        if($r->event=="checkuser"){
            // $item = DB::table('item_lend')
            // ->leftjoin('item','item.item_id','item_lend.lend_itemID')
            // ->leftjoin('users','users.id','item_lend.lend_uid')
            // ->select('item_lend.*','users.name as name','item.item_mac as lenditem_mac','item.*')
            // ->paginate(100);
            // return response()->json($item);





            $count = DB::table('users')->where('email','=',$r->username)->count();
            if($count!=0){
                $user = DB::table('users')->where('email','=',$r->username)->first();
                $have = Hash::check($r->password, $user->password);
                if($have){
                    echo "ถูกต้อง";
                }else{
                    echo "username หรือ password ไม่ถูกต้อง";
                }
            }else{
                echo "sssusername หรือ password ไม่ถูกต้อง";
            }


        }







    }

    public function show($id)
    {
        $view['package']=DB::table('tr_package_name')->where('uid',$id)->first();
        return view('selectpackage.show',$view);
    }

    public function create()
    {
        //return view('test01.show',$view);
    }



}
