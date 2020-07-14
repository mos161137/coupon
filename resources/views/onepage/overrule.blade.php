    @php    
        $log = DB::table('logconnectbeacon')->get();
        DB::table('item')->update(['item_status'=>'0','item_lastpoint'=>""]);
        DB::table('users')->update(['item_status'=>'0','item_lastpoint'=>""]);

        
        foreach ($log as $k) {
            $count = DB::table('item')->where('item_mac','=',$k->macbecon)->count();
            if($count!=0){
                $item = DB::table('logconnectbeacon')->where('macbecon','=',$k->macbecon)->get();
                $i=0;
                foreach ($item as $key) {
                    $json[$i]  = $key->macid;
                    $i++;    
                }
                $val['item_lastpoint'] = json_encode($json);
                $val['item_status'] = '1';
                DB::table('item')->where('item_mac','=',$k->macbecon)->update($val);                 
            }
        }

        foreach ($log as $k) {
            $count = DB::table('users')->where('item_mac','=',$k->macbecon)->count();
            if($count!=0){
                $item = DB::table('logconnectbeacon')->where('macbecon','=',$k->macbecon)->get();
                $i=0;
                foreach ($item as $key) {
                    $json[$i]  = $key->macid;
                    $i++;    
                }
                $val['item_lastpoint'] = json_encode($json);
                $val['item_status'] = '1';
                DB::table('users')->where('item_mac','=',$k->macbecon)->update($val);                 
            }
        }

        DB::table('logconnectbeacon')->truncate();
    @endphp
