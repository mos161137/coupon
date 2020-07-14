@php

    date_default_timezone_set("Asia/Bangkok");
    
    $count = strlen($_GET['str']);
    if($count > 25){
        //$val['str'] = $_GET['str'];
        //$val['str'] = $count;
        //DB::table('logconnectbeacon')->insert($val);
        $ex = explode('::', $_GET['str']);

        foreach ($ex as $va) {
            $x = explode('-', $va);
            $mac_have = DB::table('logconnectbeacon')->where('macbecon','=',$x[0])->count();
            $val['macid']       = $_GET['macid'];
            $val['rssibeacon']  = $x[1];
            $val['datetime']    = date('Y-m-d H:s:i');
            //DB::table('logconnectbeacon')->insert($val);

            if($mac_have=='0'){
                $val['macbecon']    = $x[0];               
                DB::table('logconnectbeacon')->insert($val);
            }else{
                if($x[1]<80){
                    DB::table('logconnectbeacon')->where('macbecon','=',$x[0])->update($val);
                }
                  

            }
            $val = array();
            $x   = array();
        }
    }


    // if(isset($_GET['macid'])){

 
    //     date_default_timezone_set("Asia/Bangkok");
    //     $count = DB::table('logconnectbeacon')->where([
    //         ['macbecon','=',$_GET['bt_addr']],
    //         ['macid','=',$_GET['macid']]
    //     ])->count();
        
    //     if($count<1){
    //         $val['macid']       = $_GET['macid'];
    //         $val['macbecon']    = $_GET['bt_addr'];
    //         $val['rssibeacon']  = $_GET['rssi'];
    //         $val['datetime']    = date('Y-m-d H:s:i');
    //         DB::table('logconnectbeacon')->insert($val);
    //     }else{
    //         $val['rssibeacon']  = $_GET['rssi'];
    //         $val['datetime']    = date('Y-m-d H:s:i');
    //         DB::table('logconnectbeacon')->where([
    //             ['macbecon','=',$_GET['bt_addr']],
    //             ['macid','=',$_GET['macid']]
    //         ])->update($val);
    //     }
    // }
            

@endphp