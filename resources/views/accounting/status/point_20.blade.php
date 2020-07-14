@extends('accounting.status.masster')


@section('content')
@php
    $m=0;
    @endphp
<div class="row">
    <h2>ส่งผ่าน E-mail</h2>
</div>
{{Form::open(['url'=>'point_20'])}}
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
<table class="table"><tr style="text-align: center;"><th>ชื่อลูกค้า</th><th>Package</th><th>ส่งไปที่ E-mail เมื่อ</th><th>ราคา</th></tr>
@foreach ($showall as $mm)
    <tr>
    <td class="pad_l">คุณ&nbsp;{{$mm->firstname}}&nbsp;&nbsp;{{$mm->lastname}}</td>
    <td class="pad_l">{{$mm->package_name}}</td>
    <td class="pad_l">{{$mm->sendemail_date}}</td>
    <td id="ms">{{number_format($mm->cash)}}</td>
    </tr>
    @php
        $m+=(int)$mm->cash;
    @endphp
@endforeach
<tr>
    <td colspan="2" style="
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
