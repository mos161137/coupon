<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>SAMITIVEJ SRIRACHA</title>
  <link rel = "icon" href="{{url('')}}/logo/icon.png"
        type = "image/x-icon">
    <meta name="csrf-token" content="{{ csrf_token() }}" />
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
            <a href="{{url('')}}/dashboard" class="nav-item nav-link">
              หน้าหลัก</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">
             เปิด package</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link disabled"
            href="#" tabindex="-1" aria-disabled="true">
              ชำระเงิน</a>
          </li>
        </ul>
        {{-- <form class="form-inline my-2 my-lg-0"> --}}
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

      </div>
    </nav>

          <div class="container-fluid" id="myModal" style="padding-left:5%;padding-right:5%;padding-top:0;">
            <div class="modal fade" id="exampleModal" role="dialog">


              <div class="modal-dialog modal-sm">

              <div class="modal-content">

                  <div class="modal-header">

                    <h4 class="modal-title">ยืนยัน</h4><br>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                  </div>

              <div class="modal-body ">
            {{Form::open(['url'=>'pay_0'])}}

                      ยอดชำระ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp; <input type="number" name="total_amount" id="total_amount" style="border-radius: 10px;width: 47%;text-align: center;"><br>
                      เลขที่ใบเสร็จ : &nbsp; <input type="text" id="receipt_number" name="receipt_number" value="" style="border-radius: 10px;width: 47%;text-align: center;"><br>

                      ผู้ขาย : &nbsp; <input style="border:none;" type="text" name="user" value="{{Auth::user()->firstname}}&nbsp;&nbsp;{{Auth::user()->firstname}}">

                      <input type="hidden" name="sale_id" id="sale_id" value="{{Auth::user()->id}}"><br>
                      {{-- <input type="hidden" name="barcode" id="barcode" value="{{$result}}"> --}}
                      Package : <input type="text" name="packagename" id="packagename" style="border:none;">
                      <input type="hidden" name="packageid" id="packageid">
                      <input type="hidden" name="coupon_id" id="coupon_id">
                      <br>
                      <br><center><button type="submit"  class="btn btn-primary btn-sm">ยืนยัน</button></center>
                {{ Form::close() }}
              </div>


                </div>
              </div>
          </div>
          @php
              $m=0;
              @endphp

          <div class="row" style="margin-top:2%;">
              <h2>ยังไม่ชำระเงิน</h2>
          </div>
          {{Form::open(['url'=>'pay'])}}
              <div class="form-row" style="margin-top:1%">

                <div class="col">
                  <Label style="font-size :20px;"><i class="fa fa-search" aria-hidden="true"></i> &nbsp; Search </Label>
                </div>
                <div class="col-2">
                  <input type="text" class="form-control" name="search_name" placeholder="ชื่อที่ต้องการหา">
                </div>

                <div class="col">
                  <input type="date" name="date_start" class="form-control">
                </div>
                <div class="col">
                  <input type="date" name="date_end" class="form-control">
                </div>
                <div class="col">
                  <input type="submit" value="ค้นหา" class="btn btn-primary">
                </div>
                <div class="col-4">

              </div>
              {{ Form::close() }}
  </div>

  <div class="row" style="margin-top:2%;">
    <div class="cal-12" style=" width:100%;">
          <table class="table">
          <tr style="text-align: center;"><th>ยืนยันการชำระ</th><th>ชื่อลูกค้า</th><th>Package</th><th>วันเวลาเปิด Coupon</th><th>ราคา</th></tr>

            @php
            $sum=0;
            @endphp

          @foreach ($showall as $mm)
              <tr>



                @php
                    $decode = jsonDecode($mm->add_on_pk);
                    $num    = 0;

                    $count  = count($decode);
                    if(isset($decode)){
                        for($i=0;$i<$count;$i++){
                            if($decode[$i]>0){
                               $query  = DB::table('orderitem')->where('order_id',$decode[$i])->first();
                               $num = $num + number_format($query->order_price);
                            }
                        }
                    }

                    $num = $num + $mm->total_amount;
                    //$sum = $sum + $num;



                @endphp


                <td id="ms"><input type="button"
                  class="btn btn-success btn-sm call_modal sendval"
                  value="ชำระเงิน"
                  firstname="{{$mm->firstname}}"
                  lastname="{{$mm->lastname}}"


                  coupon_id="{{$mm->coupon_id}}"
                  packageid="{{$mm->coupon_package}}"
                  packagename="{{$mm->package_name}}"
                  total_amount="{{$num}}"
                  data-toggle="modal"
                  data-target="#exampleModal" ></td>

              <td class="pad_l"> คุณ&nbsp;{{$mm->firstname}}&nbsp;&nbsp;{{$mm->lastname}}</td>
              <td class="pad_l">{{$mm->package_name}}</td>
              <td class="pad_l">{{$mm->coupon_saleoutdate}}</td>
              <td id="ms">





                    {{number_format($num)}}

              </td>
              </tr>
                @php
                  $m+=(int)$num;
                @endphp

          @endforeach
          <tr>
              <td colspan="3" style="
          border-bottom: none;
          border-left: none;
          background: white;"></td><td style="text-align:right;border-bottom: none;
          border-left: none;
          background: white;"><b>ยอดรวมประจำวัน :</b></td>
              <td id="ms" style="background-color: #F5F5F5;">@php
                  echo number_format($m);
                  @endphp</td>
          </tr>
          </table>
    </div>
  </div>

<script type='text/javascript' src="{{url('')}}/js/jquery/jquery.min.js"></script>
<script type='text/javascript' src="{{url('')}}/js/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

  <script>
      $("#menu-toggle").click(function(e) {
          e.preventDefault();
          $("#wrapper").toggleClass("toggled");
        });


    $('.btn-success').click(function(){
        $('#packageid').val($(this).attr('packageid'));
        $('#coupon_id').val($(this).attr('coupon_id'));
        $('#total_amount').val($(this).attr('total_amount'))
        $('#packagename').val($(this).attr('packagename'));
      });
</script>



<script>

$.ajaxSetup({
headers: {
    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
}
});

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




</body>
</html>
