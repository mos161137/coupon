<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>

    <br><br><br>
    <center><img src="{{url('')}}/logo/logo1.png" alt="" style="width: 8%;"></center>
    <br>
    @php
        $mm=request()->route()->coupon;
        $rs=DB::table('tb_coupon')
        ->join('patient','patient.id','tb_coupon.coupon_pid')
        ->join('users','users.id','tb_coupon.coupon_saleuser')
        ->join('tr_package_name','tr_package_name.uid','tb_coupon.coupon_package')
        ->select('tr_package_name.*','users.*','tb_coupon.*','patient.firstname as p_firstname','patient.lastname as p_lastname','patient.phone as p_phone')
        ->where('coupon_gen','=',$mm)
        ->first();
    @endphp
    <div style="padding-left:29%;">
    <div class="card" style="width: 60%;">
        <ul class="list-group list-group-flush">
          <li class="list-group-item" style="text-align:center;">
            @php 
            echo '<img src="data:image/png;base64,' . DNS1D::getBarcodePNG(request()->route()->coupon, "C39") . '" alt="barcode"   />';
            @endphp
          </li>
        <li class="list-group-item">  ชื่อลูกค้า : &nbsp;{{$rs->p_firstname}}&nbsp;{{$rs->p_lastname}}<br>
                                        Package : &nbsp;{{$rs->package_name}}<br>
                                        </li>
          <li class="list-group-item"><b>รายละเอียดผู้ขาย</b><br>
        ชื่อผู้ขาย &nbsp;&nbsp;&nbsp;: {{$rs->firstname}}<br>
        เบอร์ติดต่อ : {{$rs->phone}}<br>
        ตำแหน่ง &nbsp;&nbsp;&nbsp;: {{$rs->user_type}}</li>
        </ul>
      </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>

</html>
