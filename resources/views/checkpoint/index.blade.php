<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SAMITIVEJ SRIRACHA</title>
    <link rel = "icon" href="{{url('')}}/logo/icon.png"
          type = "image/x-icon">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href='https://fonts.googleapis.com/css?family=Kanit:400,300&subset=thai,latin' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
          body {
            font-family: 'Kanit', sans-serif;
          }
        .list_hv{
          background-color: #006640;
          color: #ffffff;
        }
        .list_hv:hover {
          background-color: #008000;
          color: #ffffff;
        }
        .btnm{
          background-color: #006640;color: #ffffff;
        }
        .btnm:hover {
          background-color: #008000;
          color: #ffffff;
        }
        label{
          color: black;
          padding-bottom: 5px;
        }

      #customers {
        font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 100%;
        padding-top: 50px;

      }

      #customers td, #customers th {
        border: 1px solid #ddd;
        padding: 8px;
      }

      #customers tr{background-color: #C6FFAD;}

      #customers tr:hover {background-color: 	#00FA9A;}

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
      .sss{
        padding-bottom: 15px;
      }
      .hh{
        margin-top: 1%;
      }
      </style>
  </head>
  <body style="font-family: 'Mitr', sans-serif;">


    <nav class="navbar navbar-expand-lg m-auto navbar-light" style="background-color: #ffffff;-webkit-box-shadow: 0px 1px 19px -2px rgba(0,0,0,0.2);
    -moz-box-shadow: 0px 1px 19px -2px rgba(0,0,0,0.2);
    box-shadow: 0px 1px 19px -2px rgba(0,0,0,0.2);border-radius: 0px 0px 10px 10px;">
      <a class="navbar-brand"><img src="{{url('')}}/logo/logo01.jpg" height="30"></a>&nbsp;&nbsp;
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>



      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
          <li class="nav-item active">

          </li>
          <li class="nav-item dropdown">


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

{{Form::open(['url'=>'checkpointsearch'])}}
<div class="row" style="background-color: #ffffff;border-radius: 5px;border: #006640;
box-shadow: 1px 1px 12px -3px #ccc;margin:4%;">
  <div class="col-12" style="text-align: right; padding:1%;">
    <input id="hn" name="hn" placeholder="HN" type="text" style="border-radius: 10px;
    text-align: center;"/>
    <input type="hidden" name="package_id" value="{{Request::segment(2)}}">
    <input id="coupon_gen" name="coupon_gen" placeholder="Bar Code" type="text" style="border-radius: 10px;
    text-align: center;"/>
    <button class="btn btn-success btn-sm" style="color: #fff;background-color: #036342; border-color: #046240;" name="" type="submit">
      Search
    </button>
  </form>
  </div>
<div class="col-12" style="    padding-top: 3%;
margin-bottom: 2%;
font-family: 'Kanit', sans-serif;
padding-left: 30%;">
  <table width="60%">
    @foreach ($hhn as $mm)
    <thead><h2>ข้อมูลผู้ป่วย</h2></thead>
    <tr>
      <td><b>HN</b></td><td>: &nbsp;&nbsp;{{$mm->hn}}</td><td><b>Visit</b></td><td>: &nbsp;&nbsp;{{$mm->patient_visit_uid}}</td>
    </tr>
    <tr>
      <td><b>ชื่อ - สกุล</b></td><td colspan="3">: &nbsp;&nbsp;{{$mm->fristname}} &nbsp; {{$mm->lastname}}</td>
    </tr>
    <tr>
      <td><b>วันเกิด</b></td><td>: &nbsp;&nbsp;{{$mm->dob}}</td><td><b>อายุ</b></td><td>: &nbsp;&nbsp;{{$mm->age}}</td>
    </tr>
    <tr>
      <td><b>เพศ</b></td><td colspan="3">: &nbsp;&nbsp;{{$mm->sex}}</td>
    </tr>
      @endforeach
    </table>
</div>
<hr width="95%">
<div class="col-12" style="padding-top: 3%;
margin-bottom: 2%;
font-family: 'Kanit', sans-serif;
padding-left: 30%;">

  @foreach ($pkpay as $item)
  <h2>ข้อมูล Package</h2>

  ชื่อ Package : {{@$item->package_name}}<br>

  <table border="0">


    @php
    $decode = jsonDecode($item->add_on_pk);
    $num    = 0;

    $count  = count($decode);
    if(isset($decode)){
        for($i=0;$i<$count;$i++){
            if($decode[$i]>0){
              $query  = DB::table('orderitem')->where('order_id',$decode[$i])->first();
              echo "<tr><td>&nbsp;&nbsp;&nbsp; $query->order_name</td><td>&nbsp;&nbsp;".number_format($query->order_price)."</td></tr>";

              $num = $num+$query->order_price;
            }
        }
    }

    //dd($item);
    $num = $num + $item->total_amount;


  @endphp
    <tr><td colspan="2" style="text-align:right">&nbsp; {{number_format($num)}}</td></tr>
  </table>







  ชื่อผู้ชื้อ : {{@$item->prefixname}} &nbsp;
  {{@$item->firstname}} &nbsp;&nbsp;
  {{@$item->lastname}} <br>
  วันที่ชื้อ : {{@$item->coupon_saleoutdate}}<br>
  @if(@$item->coupon_status==20)<br>
<div style=" text-align: center;padding-right: 50%;">
<button type="button"
style="color:#ffffff; background-color: #c39300;"
vid="{{@$item->email}}"
coupon_id="{{@$item->coupon_id}}"
class="btn btn-warning btn-sm btn-info"
data-toggle="modal"
data-target="#myModal">ใช้คูปอง</button>
</div>
@endif
<br>
@if($item->coupon_status<=19)
<font size="4" color="orange" style="padding-left: 18%;">ยังไม่ชำระเงิน</font>
@endif
@if($item->coupon_status>=21)
<font size="4" color="red"style="padding-left: 18%;">ถูกใช้ไปแล้ว</font>
@endif
@endforeach

</div>

<div class="modal fade" id="myModal" role="dialog">

        {{Form::open(['url'=>'checkpoint'])}}
      <div class="modal-dialog modal-sm">

        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">ยืนยันการใช้คูปอง</h4><br>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
          <div class="modal-body ">
              <div class="modal-dialog" style="text-align: center;">



                @foreach ($hhn as $mm)
                <input type="hidden" name="sale_id" id="sale_id" value="{{Auth::user()->id}}">
                <input type="text" name="hn" style="border: none;" id="hn" value="{{@$mm->hn}}">
                <input type="text" name="hn_visit" style="border: none;" id="patient_visit_uid" value="{{@$mm->patient_visit_uid}}">
                <input type="text" name="hn_name" style="border: none;" value="{{$mm->fristname}} &nbsp; {{@$mm->lastname}}">

                <input type="hidden" name="packageid" id="packageid">
                <input type="hidden" name="coupon_id" id="coupon_id">
                <br>



  </div>
  @endforeach
              </div>
            <center><button type="submit"  class="btn btn-primary btn-lg" idval="" id="btnpackageid">ยืนยัน</button></center>
          </div>
        </form>
        </div>

      </div>

</div>




<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>


<script>
        $('.btn-info').click(function(){

            $('#packageid').val($(this).attr('vid'));
            $('#coupon_id').val($(this).attr('coupon_id'));
        });
        </script>
</body>
</html>

