<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <link rel="stylesheet" href="{{url('')}}/css/simple-sidebar.css" rel="stylesheet" />
  <link rel="stylesheet" href="{{url('')}}/css//bootstrap/css/bootstrap.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>

  .list_hv{
    background-color: #006640;
    color: #ffffff;
  }
  .list_hv:hover {
    background-color: #008000;
    color: #ffffff;
  }
  .btnm{
    background-color: #ffffff;color: #2F4F4F;
    border-radius: 30px;
  }
  .btnm:hover {
    background-color: #ffffff;
    color: #696969;
  }
  label{
    color: #000000;
  }
  
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
  padding-top: 50px;
  
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 2px;
}
.table tr:nth-child(even){background-color: #F5F5F5;}
#customers tr{background-color: #C6FFAD;}

.table tr:hover {background-color: 	#F5F5F5;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #006640;
  color: white;
  text-align: center;
}
#ms{
  text-align: center;
}
#mms{
  margin-left: 10px;
  
}
.pad_l{
  padding-left: 30px !important;
}
.custom-select {
  position: relative;
  font-family: Arial;
}

.custom-select select {
  display: none; /*hide original SELECT element: */
}

.select-selected {
  background-color: red;
}

/* Style the arrow inside the select element: */
.select-selected:after {
  position: absolute;
  content: "";
  top: 14px;
  right: 10px;
  width: 0;
  height: 0;
  border: 6px solid transparent;
  border-color: #fff transparent transparent transparent;
}

/* Point the arrow upwards when the select box is open (active): */
.select-selected.select-arrow-active:after {
  border-color: transparent transparent #fff transparent;
  top: 7px;
}

/* style the items (options), including the selected item: */
.select-items div,.select-selected {
  color: #ffffff;
  padding: 8px 16px;
  border: 1px solid transparent;
  border-color: transparent transparent rgba(0, 0, 0, 0.1) transparent;
  cursor: pointer;
}

/* Style items (options): */
.select-items {
  position: absolute;
  background-color: red;
  top: 100%;
  left: 0;
  right: 0;
  z-index: 99;
}

/* Hide the items when the select box is closed: */
.select-hide {
  display: none;
}

.select-items div:hover, .same-as-selected {
  background-color: rgba(0, 0, 0, 0.1);
}
</style>

  </head>
<body>
  <nav class="navbar navbar-expand-lg m-auto navbar-light" style="background-color: #ffffff;-webkit-box-shadow: 0px 1px 19px -2px rgba(0,0,0,0.2);
  -moz-box-shadow: 0px 1px 19px -2px rgba(0,0,0,0.2);
  box-shadow: 0px 1px 19px -2px rgba(0,0,0,0.2);border-radius: 0px 0px 10px 10px;">
    <a class="navbar-brand"><img src="{{url('')}}/logo/logo01.jpg" height="30"></a>&nbsp;&nbsp;
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    
  
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        <li class="nav-item">
          <a href="{{url('')}}/user" class="nav-item nav-link"><i class="fa fa-home" aria-hidden="true"></i>&nbsp;Home</a>
        </li>
        <li class="nav-item">
          <a href="{{url('')}}/user/create" class="nav-item nav-link"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;สร้าง User</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">แก้ไข</a>
        </li>
      </ul>
      <form class="form-inline my-2 my-lg-0">
        <label>
          ชื่อผู้ใช้&nbsp;:&nbsp;
          {{Auth::user()->firstname}}&nbsp;&nbsp;{{Auth::user()->lastname}}
          &nbsp;&nbsp;<font color="red" font-size="5"><b>(&nbsp;
           @php
               $a = " ".Auth::user()->user_type."";
               $b = strtoupper($a);
               echo $b;
           @endphp &nbsp;)</b></font>
        </label>
        &nbsp;
        <a style="color:#000000;" href="{{url('')}}/logout"><b>Logout</b></a>
      </form>
    </div>
  </nav>
          <div class="container-fluid" id="myModal" style="padding-left:5%;padding-right:5%;padding-top:2%;">
            <div class="row" style="text-align: center;">
              <h2>แก้ไข User</h2>
          </div>
{{-- ส่งไปยัง userController / Store --}}
<div class="row" style="margin-left: 26%;margin-top: 2%;margin-bottom:2%;">
    <div class="col-12"style="margin-left: 18px;>

    
{{Form::open(['method'=>'put','route'=>['user.update',Request::segment(2)]])}}
    <div class="form-group">
        <label class="control-label col-sm-2" for="email">ประเภทผู้ใช้:</label>
        <div class="col-sm-6">
@php
    $user_type = DB::table('user_type')->get();
@endphp

                {!! Form::select('user_type',array(''=>'ประเภทผู้ใช้')+array_pluck($user_type,'type_name','type_name'),
                '',['class'=>'form-control','required']) !!}
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="email">PrefixName:</label>
        <div class="col-sm-6">
        <input type="text" class="form-control" placeholder="PrefixName" name="prefixname" value="{{$user->prefixname}}">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="email">First Name :</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" placeholder="FirstName" name="firstname" value="{{$user->firstname}}">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="email">Last Name :</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" placeholder="LastName" name="lastname" value="{{$user->lastname}}">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="email">Position :</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" placeholder="Position" name="position" value="{{$user->position}}">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="email">Line :</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" placeholder="Line" name="line"  value="{{$user->line}}">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="email">E-mail :</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" placeholder="Email" name="email" value="{{$user->email}}" required>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="email">Phone :</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" placeholder="phone" name="phone" value="{{$user->phone}}">
            </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-sm-6">
        <input type="password" class="form-control" name="password">
      </div>
    </div>
    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-6">
        <center><button type="submit" style="color:#ffffff;" class="btn btn-warning btn-sm">แก้ไข</button></center>
      </div>
    </div>
  </form>
</div>

</div>


  <script type='text/javascript' src="{{url('')}}/js/jquery/jquery.min.js"></script>
  <script type='text/javascript' src="{{url('')}}/js/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  
    <script>
        $("#menu-toggle").click(function(e) {
            e.preventDefault();
            $("#wrapper").toggleClass("toggled");
          });
  
  
      $('.btn-info').click(function(){
          //alert();
          $('#packageid').val($(this).attr('vid'));
          $('#coupon_id').val($(this).attr('jujuj'));
      });
  
      $('.call_modal').click(function(){
          // alert($(this).attr('coupon_id'));
          $('#packageid').val($(this).attr('vid'));
          $('#coupon_id').val($(this).attr('coupon_id'));
      });
  
  
  
  
  
  
  
        </script>
  
  
  
  
  </body>
  </html>
