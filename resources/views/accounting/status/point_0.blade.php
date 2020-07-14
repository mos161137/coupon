@extends('accounting.status.masster')


@section('content')
<div class="modal fade" id="exampleModal" role="dialog">

    {{Form::open(['url'=>'checkcash'])}}
    <div class="modal-dialog modal-sm">

    <div class="modal-content">

        <div class="modal-header">

          <h4 class="modal-title">ยืนยัน</h4><br>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>

    <div class="modal-body ">
            ยอดชำระ : &nbsp;&nbsp;&nbsp;&nbsp; <input type="number" name="total_amount" id="total_amount"
            style="border-radius: 15px;
            text-align: center;
            width: 62%;">
            เลขที่ใบเสร็จ :&nbsp;<input type="text" id="receipt_number" name="receipt_number" style="border-radius: 15px;
            text-align: center;
            width: 62%;">
            <input type="hidden" name="sale_id" id="sale_id" value="{{Auth::user()->id}}">
            {{-- <input type="hidden" name="barcode" id="barcode" value="{{$result}}"> --}}
            <input type="hidden" name="packageid" id="packageid">
            <input type="hidden" name="coupon_id" id="coupon_id">


    </div>
    {{ Form::close() }}
    <div class="modal-footer">
      <button type="submit"  class="btn btn-primary btn-sm">ยืนยัน</button>
    </div>
      </div>
    </div>
</div>
@php
    $m=0;
    @endphp

<div class="row">
    <h2>ยังไม่ชำระเงิน</h2>
</div>
{{Form::open(['url'=>'point_0'])}}
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
@endsection
