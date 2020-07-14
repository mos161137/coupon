<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use Auth;

class ICD10Controller extends Controller
{

   public function __construct(){$this->middleware('auth');}
   public function index(Request $r)
   {
      return view('endo/fortest');
   }

   public function search(Request $request)
   {
      $search = $request->get('term');
      $result = DB::table('orderitem')->where('order_name','LIKE','%'. $search. '%')->limit(10)->get();
      return response()->json($result);
   } 


   
}