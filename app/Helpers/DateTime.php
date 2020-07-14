<?php 
//Show Date with user timezone
if (! function_exists('show_date')) {
    function show_date($date, $format="d/m/Y H:i")
    {
        if(!($date instanceof \Carbon\Carbon)) {
            if(is_numeric($date)) {
                 // Assume Timestamp
                 $date = \Carbon\Carbon::createFromTimestamp($date);
            } else {
                $date = \Carbon\Carbon::parse($date);
            }
        }
    
        return $date->setTimezone(Auth::user()->timezone)->format($format);
    }
}
 
//Set Datetime to insert_db
if (! function_exists('insert_db_date')) {
    function insert_db_date()
    {
        return "msmss";
    }
}

//Set Datetime to insert_db
if (! function_exists('moss')) {
    function moss()
    {
        return "mmmmm";
    }
}