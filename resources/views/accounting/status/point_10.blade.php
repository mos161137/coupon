@extends('accounting.status.masster')


@section('content')

<div class="row">
    <h2>ชำระเงินแล้ว</h2>
</div>
<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">ยืนยันการชำระเงิน</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body"style="padding-left: 22%;">
          {{Form::open(['url'=>'account@modal2'])}}


        <input type="hidden" name="packageid" id="packageid1">
        <input type="hidden" name="sale_id" id="sale_id1" value="{{Auth::user()->id}}">
        <input type="hidden" name="coupon_gen" id="coupon_gen1">

        เลขที่ใบเสร็จ &nbsp;: <input type="text" style="border: none;" name="receipt_number" id="receipt_number"><br>
        ยอดที่ชำระ &nbsp;&nbsp;&nbsp;&nbsp;: <input type="text" style="border: none;" name="cash" id="cash" readonly><br>
        ชื่อผู้ขาย &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <input type="text" style="border: none;" name="sale_name" value="{{Auth::user()->firstname}} &nbsp; {{Auth::user()->lastname}}">

        <input type="hidden" name="coupon_id" id="coupon_id1">

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">ยกเลิก</button>
        <button type="submit" class="btn btn-primary" idval="" id="btnpackageid">ยืนยัน</button>
      </div>
    </form>
    </div>
  </div>
</div>
{{Form::open(['url'=>'point_10'])}}
    <div class="form-row" style="margin-top:1%">

      <div class="col">
        <Label style="font-size :20px;"><i class="fa fa-search" aria-hidden="true"></i> &nbsp; Search </Label>
      </div>
      <div class="col-2">
        <input type="text" class="form-control" name="search_name" placeholder="ชื่อที่ต้องการหา" value="{{@$_POST['search_name']}}">
      </div>

      <div class="col">
        <input type="date" name="date_start" class="form-control" value="{{@$_POST['date_start']}}">
      </div>
      <div class="col">
        <input type="date" name="date_end" class="form-control" value="{{@$_POST['date_end']}}">
      </div>
      <div class="col">
        <input type="submit" value="ค้นหา" class="btn btn-primary">
      </div>
      <div class="col-4">

    </div>
    </div>
    <br><input type="submit" value="Export to Excel" name="excel" class="btn btn-success"><br>
    {{ Form::close() }}
  <div class="row" style="margin-top:2%;">
    <div class="cal-12" style=" width:100%;">
@php
    $m=0;
    @endphp

<table class="table"><tr style="text-align: center;"><th></th><th></th><th>ชื่อลูกค้า</th><th>Package</th><th>วันเวลาชำระเงิน</th><th>ราคา</th></tr>
@foreach ($showall as $mm)
    <tr>
    <td> <input type="button" value="&nbsp;&nbsp;&nbsp;อนุมัติการใช้ Coupon&nbsp;&nbsp;&nbsp;"
      packageid1="{{$mm->email}}" coupon_id1="{{$mm->coupon_id}}"
      receipt_number="{{$mm->receipt_number}}"
      cash="{{number_format($mm->cash)}}"
      coupon_gen1="{{$mm->coupon_gen}}"
      data-toggle="modal" data-target="#exampleModal1"
      class="call_modal1 btn btn-warning btn-sm"
      ></td>
    <td class="pad_l"><a href="{{url('')}}/pdf1?couponid={{$mm->coupon_id}}" class="btn btn-secondary">จัดทำใบเสร็จ</a></td>
    <td class="pad_l">คุณ&nbsp;{{$mm->firstname}}&nbsp;&nbsp;{{$mm->lastname}}</td>
    <td class="pad_l">{{$mm->package_name}}</td>
    <td class="pad_l">{{$mm->receidate}}</td>
    <td id="ms">{{number_format($mm->cash)}}</td>
    </tr>
    @php
        $m+=(int)$mm->cash;
    @endphp
@endforeach
<tr>
    <td colspan="4" style="
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

@endsection
