<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>SAMITIVEJ SRIRACHA</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <meta name="csrf-token" content="{{ csrf_token() }}" />
  <link rel = "icon" href="{{url('')}}/logo/icon.png"
        type = "image/x-icon">
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
.az{
  color: #006640;
}
</style>

<body>

  {{-- บาบน --}}

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
          <a href="{{url('')}}/accounting" class="nav-item nav-link">
           แสดงทั้งหมด</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            แสดงเฉพาะฟิลล์
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" style="color:#006640;">
            <a href="{{url('')}}/point_0" class="dropdown-item az">
              <i class="fa fa-paypal" aria-hidden="true"></i>&nbsp;ยังไม่ชำระเงิน</a>
              <a href="{{url('')}}/point_10" class="dropdown-item az">
                <i class="fa fa-money" aria-hidden="true"></i>&nbsp;ชำระเงินแล้ว</a>
              <a href="{{url('')}}/point_20" class="dropdown-item az">
                <i class="fa fa-envelope" aria-hidden="true"></i>&nbsp;ส่งผ่าน E-mail</a>
              <a href="{{url('')}}/point_40" class="dropdown-item az">
                <i class="fa fa-barcode" aria-hidden="true"></i>&nbsp;Coupon ที่ถูกแสกน</a>
              <a href="{{url('')}}/point_50" class="dropdown-item az">
                <i class="fa fa-file-text" aria-hidden="true"></i>&nbsp;ออกใบเสร็จ</a>
          </div>
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
        @yield('content')





</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
  </script>


  <script>
    $('.call_modal').click(function(){
        // alert($(this).attr('coupon_id'));
        $('#packageid').val($(this).attr('packageid'));
        $('#coupon_id').val($(this).attr('coupon_id'));
    });
    $('.btn-success').click(function(){
        $('#packageid').val($(this).attr('packageid'));
        $('#coupon_id').val($(this).attr('coupon_id'));
        $('#total_amount').val($(this).attr('total_amount'))
        $('#packagename').val($(this).attr('packagename'));
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


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>

$.ajaxSetup({
headers: {
    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
}
});

/*
$(".sendval").click(function(){
     var usecoupondate   = $(this).attr("usecoupondate");
     var hnid            = $(this).attr("hnid");

    $.post("{{url('')}}/jquery",
    {
        event   : "get_bill",
        hn      : hnid,
        date    : usecoupondate,
    },
    function(data, status){
        var obj = JSON.parse(data);
        $('#invoice_number').val(obj[1]);
        $('#invoice_id').val(obj[0]);
    });


});
*/


$(".sendval").click(function(){

     var firstname   = $(this).attr("firstname");
     var lastname    = $(this).attr("lastname");



    $.post("{{url('')}}/jquery",
    {
        event     : "get_numbill",
        firstname : firstname,
        lastname  : lastname,
    },
    function(data, status){
        //alert(data);
        $('#receipt_number').val(data);
        //var obj = JSON.parse(data);
        //$('#invoice_number').val(obj[1]);
        //$('#invoice_id').val(obj[0]);
    });


});

</script>



  @yield('endscript')



</body>

</html>
