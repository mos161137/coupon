@php

function httpGet($url)
{
    $ch = curl_init();
    curl_setopt($ch,CURLOPT_URL,$url);
    curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);
    $output=curl_exec($ch);
    curl_close($ch);
    return $output;
}


if(isset($_GET['qr'])){
    $scanqr = json_decode(httpGet("http://202.29.153.104/portersmart/public/stemi?qr=".$_GET['qr']));
}



@endphp


@extends('accounting.status.masster')


@section('content')
@php
    $m=0;
    @endphp
{{-- 1 --}}
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
<div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">ยืนยันการรับ Bill</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          {{Form::open(['url'=>'accounting'])}}
        <input type="hidden" name="sale_id" id="sale_id" value="{{Auth::user()->id}}">

        รหัสใบแจ้งหนี้ : &nbsp;
        <input
        type="text"
        name="invoice_id"
        id="invoice_id"
        style="border-radius: 15px;
        text-align: center;
        width: 75%;">


        เลขใบแจ้งหนี้ : &nbsp;
        <input
        type="text"
        name="invoice_number"
        id="invoice_number"
        style="border-radius: 15px;
        text-align: center;
        width: 75%;">
        <input type="hidden" name="coupon_id" id="coupon_id">

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">ยกเลิก</button>
        <button type="submit" class="btn btn-primary" idval="" id="btnpackageid">ยืนยัน</button>
      </div>
      {{ Form::close() }}
    </div>
  </div>
</div>
{{-- end --}}

<div class="row">
  <h2>Coupon ที่ถูกใช้งาน</h2>
</div>
{{Form::open(['url'=>'point_40'])}}
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
<table class="table"><tr style="text-align: center;"><th></th><th>ชื่อลูกค้า</th><th>Package</th><th>เลขที่ใบเสร็จ</th>
  <th>ใช้งาน Coupon เมื่อ</th><th>ราคา</th></tr>


@foreach ($showall as $mm)
    <tr>
      <td id="ms">
          <input
            type="button"
            class="btn btn-success btn-sm call_modal sendval"
            value="จัดทำใบเสร็จ"
            coupon_id="{{$mm->coupon_id}}"
            data-toggle="modal"
            data-target="#exampleModal"
            hnid="{{$mm->hn_id}}"
            usecoupondate="{{$mm->usecoupondate}}"
            >
        </td>
    <td class="pad_l">คุณ&nbsp;{{$mm->hn_name}}</td>
    <td class="pad_l">{{$mm->package_name}}</td>
    <td class="pad_l">{{$mm->receipt_number}}</td>
    <td class="pad_l">{{$mm->usecoupondate}}</td>
    <td id="ms">{{number_format($mm->total_amount)}}</td>

    </tr>
    @php
        $m+=(int)$mm->total_amount;
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
