<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>SAMITIVEJ SRIRACHA</title>
  <link rel = "icon" href="{{url('')}}/logo/icon.png"
        type = "image/x-icon"> 
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
  {{-- โมดูล --}}

 

    <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">ยืนยันการส่ง Barcode</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body" style="padding-left: 22%;">
            {{Form::open(['url'=>'dashboard@show'])}}

        
          E-mail : <input type="text" name="packageid" id="packageid" style="border-radius: 10px;
          width: 47%;
          text-align: center;
      "><br>
          <input type="hidden" name="sale_id" id="sale_id" value="{{Auth::user()->id}}">
          <input type="hidden" name="coupon_gen" id="coupon_gen">
          ชื่อผู้ชื้อ : <input type="text" style="border: none;" name="name_user" id="name_user"><br>
          ชื่อ Package : <input type="text" style="border: none;" name="package_name" id="package_name">
          <input type="hidden" name="coupon_id" id="coupon_id">
       
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">ยกเลิก</button>
          <button type="submit" class="btn btn-primary" idval="" id="btnpackageid">ยืนยัน</button>
        </div>
      </form>
      </div>
    </div>
  </div>

    {{-- บาบน --}}


{{-- ไม่จ่าย --}}
<div class="modal fade" id="exampleModal0" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">ยืนยันการส่ง Barcode</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body"style="padding-left: 22%;">
          {{Form::open(['url'=>'dashboard@modal1'])}}

      
        E-mail &nbsp;&nbsp;&nbsp;: &nbsp;<input type="text" name="packageid" id="packageid0" style="border-radius: 10px;
        width: 47%;
        text-align: center;
    "><br>
        ชื่อผู้ขาย : &nbsp;{{Auth::user()->firstname}} &nbsp; {{Auth::user()->lastname}}
        <input type="hidden" name="sale_id" id="sale_id" value="{{Auth::user()->id}}">
        <input type="hidden" name="coupon_gen" id="coupon_gen0">
        
        <input type="hidden" name="coupon_id" id="coupon_id0">
     
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">ยกเลิก</button>
        <button type="submit" class="btn btn-primary" idval="" id="btnpackageid">ยืนยัน</button>
      </div>
    </form>
    </div>
  </div>
</div>

{{-- ไม่จ่ายจบ --}}
    
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
            <a href="{{url('')}}/dashboard" class="nav-item nav-link">
              หน้าหลัก</a>
          </li>
          <li class="nav-item">
            <a href="{{url('')}}/opencoupon" class="nav-item nav-link">
             เปิด package</a>
          </li>
          <li class="nav-item">
            <a href="{{url('')}}/pay" class="nav-item nav-link">
              ชำระเงิน</a>
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

          <div class="container-fluid" id="myModal" style="padding-left:5%;padding-right:5%;padding-top:0;">

            <div class="row" style="margin-top:2%;">
              <div class="cal-12" style=" width:100%;">
                
            <h1 class="mt-4">สถานะ Coupon</h1>
           
            
            @php
            $user=Auth::user()->id;


                $coupon = DB::table('tb_coupon')->where('coupon_saleuser','=',$user)
                ->join('patient','patient.id','tb_coupon.coupon_pid')
                ->join('tr_package_name','tr_package_name.uid','tb_coupon.coupon_package')
                ->orderby('coupon_id','desc')
                ->get();

            @endphp


            <table class="table">
                <tr><th>ชื่อลูกค้า</th><th>Package</th><th>ราคา</th><th>Status</th><th>การส่ง E-mail</th></tr>
                        @foreach ($coupon as $mm)
                        <tr>
                        <td class="pad_l">คุณ&nbsp;{{$mm->firstname}}&nbsp;{{$mm->lastname}}</td>
                        <td class="pad_l">{{$mm->package_name}}</td>
                        <td  id="ms">{{number_format($mm->total_amount)}}</td>
                        <td  class="pad_l">

                            @if($mm->coupon_status==0)
                            <span class='badge badge-success'>&nbsp;เปิดการใช้งาน Coupon&nbsp;</span></td>
                          <td>
                          <input type="button" 
                          value="ส่ง E-mail (ยังไม่จ่ายเงิน)"
                          packageid0="{{$mm->email}}" 
                          coupon_id0="{{$mm->coupon_id}}" 
                          coupon_gen0="{{$mm->coupon_gen}}"
                          data-toggle="modal" 
                          data-target="#exampleModal0" 
                          class="call_modal0 btn btn-success btn-sm"
                          ></td>
                            @endif

                            @if($mm->coupon_status==10)
                            <span class='badge badge-warning'>
                              &nbsp;&nbsp;&nbsp;
                              ทำการชำระเงินแล้ว
                              &nbsp;&nbsp;&nbsp;
                            </span></td>
                                <td>
                               </td>
                            @endif
                            @if($mm->coupon_status==20)
                            <span class='badge badge-info'>
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              ส่ง coupon แล้ว
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </span></td>
                            
                            <td>
                              <input type="button" value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ส่ง Coupon อีกครั้ง&nbsp;&nbsp;&nbsp;&nbsp;"
                              packageid="{{$mm->email}}" coupon_id="{{$mm->coupon_id}}" 
                              name_user="{{$mm->firstname}} &nbsp;&nbsp;&nbsp; {{$mm->lastname}}"
                              package_name="{{$mm->package_name}}"
                                coupon_gen="{{$mm->coupon_gen}}"
                                data-toggle="modal" data-target="#exampleModal" 
                                class="call_modal btn btn-info btn-sm">
                            </td>
                         @endif
                            @if($mm->coupon_status==40)
                            <span class='badge badge-secondary'>&nbsp;ใช้งาน coupon ไปแล้ว&nbsp;</span></td><td></td>
                            @endif
                            @if($mm->coupon_status==50)
                            <span class='badge badge-danger'>
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              ออกใบเสร็จแล้ว
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </span></td><td></td>
                            @endif

                        </tr>
                        @endforeach  
            </table>
            

            </div>
        </div>
        <!-- /#page-content-wrapper -->
    
      </div>
      <!-- /#wrapper -->
      {{-- จบบาบน --}}

    
  <!-- Menu Toggle Script -->


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


    // $('.btn-info').click(function(){
    //     //alert();
    //     $('#packageid').val($(this).attr('vid'));
    //     $('#coupon_id').val($(this).attr('jujuj'));
    // });

    $('.call_modal').click(function(){
        // alert($(this).attr('coupon_id'));
        $('#packageid').val($(this).attr('packageid'));
        $('#coupon_id').val($(this).attr('coupon_id'));
        $('#coupon_gen').val($(this).attr('coupon_gen'));
        $('#name_user').val($(this).attr('name_user'));
        $('#package_name').val($(this).attr('package_name'));
    });
    $('.call_modal0').click(function(){
        // alert($(this).attr('coupon_id'));
        $('#packageid0').val($(this).attr('packageid0'));
        $('#coupon_id0').val($(this).attr('coupon_id0'));
        $('#coupon_gen0').val($(this).attr('coupon_gen0'));
    });
    $('.call_modal1').click(function(){
        // alert($(this).attr('coupon_id'));
        $('#packageid1').val($(this).attr('packageid1'));
        $('#coupon_id1').val($(this).attr('coupon_id1'));
        $('#coupon_gen1').val($(this).attr('coupon_gen1'));
        $('#receipt_number').val($(this).attr('receipt_number'));
        $('#cash').val($(this).attr('cash'));
    });






      </script>




</body>
</html>