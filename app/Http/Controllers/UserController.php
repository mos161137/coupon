<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use App\User;
use Illuminate\Support\Facades\Hash;
use DB;

class UserController extends Controller
{

    public function index()
    {
        $user = DB::table('users')->get();
        return view('user.index',['user'=>$user]);
        //   return view('user.index');
    }


    public function create()
    {
        return view('user.create');
    }


    public function store(Request $r)
    {
        $val['user_type'] = $r->user_type;
        $val['prefixname'] = $r->prefixname;
        $val['firstname'] = $r->firstname;
        $val['lastname'] = $r->lastname;
        $val['position'] = $r->position;
        $val['line'] = $r->line;
        $val['email'] = $r->email;
        $val['phone'] = $r->phone;
        $val['password'] = Hash::make($r->password);
        $val['remember_token'] = $r->remember_token;
        $val['status'] = $r->status;
        DB::table('users')->insert($val);
        return redirect('user');
    }


    public function show()
    {
        $view['add_on'] = DB::table('orderitem')
        ->orderby('order_id','asc')
        ->paginate(20);
        return view('user.add_on',$view);
    }


    public function edit($id)
    {
        $view['user'] = DB::table('users')->where('id','=',$id)->first();
        return view('user.edit',$view);
    }


    public function update(Request $r, $id)
    {
        $val['user_type'] = $r->user_type;
        $val['prefixname'] = $r->prefixname;
        $val['firstname'] = $r->firstname;
        $val['lastname'] = $r->lastname;
        $val['position'] = $r->position;
        $val['line'] = $r->line;
        $val['email'] = $r->email;
        $val['phone'] = $r->phone;
        $val['password'] = Hash::make($r->password);
        $val['remember_token'] = $r->remember_token;
        $val['status'] = $r->status;
        DB::table('users')->where('id','=',$id)->update($val);
        return view('user.index');
    }

    public function destroy($id)
    {
        //
    }
}
