<?php 
//Show Date with user timezone
if (! function_exists('jsonDecode')) {
    function jsonDecode($value)
    {
        $value = json_decode($value);
        if($value==null){$value=array("");}
        return $value;
    }
}


if (! function_exists('jsonEncode')) {
    function jsonEncode($value)
    {
        $value = json_encode($value);
        if($value=="null"){$value=array("");}
        return $value;
    }
}


if (! function_exists('arraycheck')) {
    function arraycheck($value)
    {
        if($value==null){
            $value="";
            return $value;
        }

        $i=0;
        foreach ($value as $key => $v) {
            if($v!=""){$i++;}
        }
        if($i==0){
            return "";
        }else{
            $value = json_encode($value);
            if($value=="null"){$value=array("");}
            return $value;
        }
    }
}