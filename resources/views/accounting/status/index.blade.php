@extends('accounting.status.masster')


@section('content')


<div class="row">
    <div class="col-7">
        @php
        @endphp
            <h2>แสดงทั้งหมด</h2>

            <form action="">
            
            @php
            $select = DB::table('users')
            ->get();
            @endphp
            <select id="select_user" name="select_user" class="custom-select" style="width:250px;">
                <option value="">เลือกข้อมูลที่ต้องการแสดง</option>
                <option value="0">ทั้งหมด</option>
                @foreach ($select as $ss)
                <option value="{{$ss->id}}">{{$ss->firstname}}&nbsp;{{$ss->lastname}}</option>
                @endforeach
            </select>
            
            @foreach ($user_sc as $key => $bb)
            @endforeach
            &nbsp;&nbsp;&nbsp;จำนวนข้อมูล &nbsp; : &nbsp;{{(isset($key) ? $key+1 : '')}}
            @php
            
            @endphp
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input name="select_date" id="select_date" class="date-picker" autocomplete="off"/>
            <button class="btn btn-success btn-sm" type="submit">ค้นหา</button>
            </form>
    </div>
    <div class="col-4" style="text-align: center; margin-left:5%;float:right;">
        @php
            $count_used = 0;
            $count_unused = 0;
        @endphp
        @foreach ($user_sc as $key => $mm)
        @php
            if(($mm->coupon_status)<40){
                $count_used ++;
            }else {
            $count_unused ++;   
            }
        @endphp
        @endforeach
        <div class="alert alert-success" role="alert" >
            ยังไม่ถูกใช้ &nbsp;&nbsp;:&nbsp;&nbsp;{{$count_used}}
          </div>
          <div class="alert alert-danger" role="alert" >
            ถูกใช้ไปแล้ว :&nbsp;&nbsp;{{$count_unused}}
          </div>
    </div>
</div>



<div class="row" style="margin-top:2%;">
    <div class="cal-12" style=" width:100%;">
        <table class="table">
        <tr style="text-align: center;">
            <th>ชื่อลูกค้า</th>
            <th>Package</th>
            <th>เวลาขาย</th>
            <th>Status</th>
            <th>ราคา</th>
        </tr>
        @php
        $m=0;
        @endphp
        @foreach ($user_sc as $key => $mm)
        <tr>
            <td class="pad_l">คุณ&nbsp;{{$mm->firstname}}&nbsp;&nbsp;{{$mm->lastname}}</td>
            <td class="pad_l">{{$mm->package_name}}</td>
            <td>{{$mm->coupon_saleoutdate}}</td>
            <td style="text-align: center;">@php
                if(($mm->coupon_status)<40){ echo "<span class='badge badge-success'>&nbsp;ยังไม่ถูกใช้&nbsp;</span>" ; }else {
                    echo "<span class='badge badge-danger'>ถูกใช้ไปแล้ว</span>" ; } @endphp </td> <td id="ms">
                    {{number_format($mm->total_amount)}}</td>

        </tr>
        @php

        $m+=(int)$mm->total_amount;
        @endphp
        @endforeach
        <tr>
            <td colspan="3" style="
        border-bottom: none;
        border-left: none;
        background: white;"></td><td style="text-align:right;"><b>ยอดรวมประจำวัน :</b></td>
            <td id="ms" style="background-color: #F5F5F5;">@php
                echo number_format($m);
                @endphp</td>
        </tr>
        </table>
    </div>
</div>


@endsection


@section('endscript')

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.1/jquery.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/jquery-ui.min.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/themes/base/jquery-ui.css">
<script type="text/javascript">
    $(function() {
        $('.date-picker').datepicker( {
        changeMonth: true,
        changeYear: true,
        showButtonPanel: true,
        dateFormat: 'mm/yy',
        onClose: function(dateText, inst) { 
            $(this).datepicker('setDate', new Date(inst.selectedYear, inst.selectedMonth, 1));
        }
        });
    });
    
    
</script>
<style>
.ui-datepicker-calendar {
    display: none;
}
</style>




<script>

</script>


@endsection