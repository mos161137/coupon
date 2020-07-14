<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>@yield('title')</title>
</head>

<style>

    body {font-family: "Garuda";
    }
    th{
        text-align: center;
    }
</style>
<body>
    @php
        $detail = DB::table('tb_coupon')->where("coupon_id",$_GET['couponid'])->first();
        date_default_timezone_set("Asia/Bangkok");
    @endphp
    <table border="0">
        <tr>
            <td>
                <img src="{{url('')}}/logo/logo_pdf.png" alt="" srcset="" width="260px" height="65px">
                <br>
                &nbsp;<small>เลขประจำตัวผู้เสียภาษี / TaxID No. 0205533004104</small>
            </td>
            <td style="width:270px;text-align: center;">
                <h3>
                    แผนกผู้ป่วยนอก / OPD
                </h3><br>
                <div style="border:1px solid black;">
                    &nbsp;&nbsp;&nbsp;ใบเสร็จรับเงิน / Receipt&nbsp;&nbsp;&nbsp;
                </div>
            </td>

            <td>
                <img src="{{url('')}}/logo/logo_pdf.png" alt="" srcset="" width="260px" height="65px">
                <br>
                &nbsp;<small>เลขประจำตัวผู้เสียภาษี / TaxID No. 0205533004104</small>
            </td>

            <td style="width:270px;text-align: center;">
                <h3>
                    แผนกผู้ป่วยนอก / OPD
                </h3><br>
                <div style="border:1px solid black;">
                    &nbsp;&nbsp;&nbsp;ใบเสร็จรับเงิน / Receipt&nbsp;&nbsp;&nbsp;
                </div>
            </td>
        </tr>


        <tr style="height:30px;">

        </tr>

        <tr>
            <td>
                &nbsp;<small>ชื่อ / PatientName :{{$detail->hn_name}}</small>
            </td>
            <td>
                <small>เลขที่เอกสาร / Document No : {{$detail->hn_visit}}</small>
            </td>
            <td>
                &nbsp;<small>ชื่อ / PatientName :{{$detail->hn_name}}</small>
            </td>
            <td>
                <small>เลขที่เอกสาร / Document No : {{$detail->hn_visit}}</small>
            </td>
        </tr>

        <tr>
            <td>
                &nbsp;<small>เลขประจำตัวผู้ป่วย / HN :{{$detail->hn_id}}</small>
            </td>
            <td>
                <small>วันที่ / Date : {{date("Y/m/d")}}</small>
            </td>
            <td>
                &nbsp;<small>เลขประจำตัวผู้ป่วย / HN :{{$detail->hn_id}}</small>
            </td>
            <td>
                <small>วันที่ / Date : {{date("Y/m/d")}}</small>
            </td>
        </tr>

        <tr>
            <td>
                &nbsp;<small>คำวินิจฉัยของแพทย์ / Diagnosis :</small>
            </td>
            <td>
                <small>เลขที่ใบยา / VN : </small>
            </td>
            <td>
                &nbsp;<small>คำวินิจฉัยของแพทย์ / Diagnosis :</small>
            </td>
            <td>
                <small>เลขที่ใบยา / VN : </small>
            </td>
        </tr>

        <tr>
            <td>
                &nbsp;<small>วันที่พบแพทย์ / Visit Date :{{@$detail->usecoupondate}}</small>
            </td>
            <td>
                <small>เวลา / Time : {{date("H:i:s")}}</small>
            </td>
            <td>
                &nbsp;<small>วันที่พบแพทย์ / Visit Date :{{@$detail->usecoupondate}}</small>
            </td>
            <td>
                <small>เวลา / Time : {{date("H:i:s")}}</small>
            </td>
        </tr>
    </table>
<style>
 #customers {

  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}



#customers th {
  padding-top: 12px;
  padding-bottom: 12px;

}
</style>
    <table id="customers">
        <tr>
            <th style="width:260px;" colspan="3">

                รายการ<br>Description
            </th>
            <th>
                &nbsp;จำนวนงิน&nbsp;
                <br>Amount
            </th>
            <th>
                ส่วนลด
                <br>
                &nbsp;Discount&nbsp;
            </th>
            <th>
                คงเหลือ
                <br>
                &nbsp;Net Amount&nbsp;
            </th>
            <th style="width:260px;" colspan="3">
                รายการ<br>Description
            </th>
            <th>
                &nbsp;จำนวนงิน&nbsp;
                <br>Amount
            </th>
            <th>
                ส่วนลด
                <br>
                &nbsp;Discount&nbsp;
            </th>
            <th>

                คงเหลือ
                <br>
                &nbsp;Net Amount&nbsp;

            </th>
        </tr>
        <tr>
            <td style="padding:5px;padding-top:10px;" colspan="3" valign="top">
                <small style="color:#737373;">
                    ค่าชุดตรวจสุขภาพ ( 1.1.14 )
                </small><br><br>

<small>
                @php


                $coupon = DB::table('tb_coupon')
                ->where('coupon_id',$_GET['couponid'])
                ->first();

                $pk = DB::table('tr_package_name')
                ->where('uid',$coupon->coupon_package)
                ->first();

                echo $pk->package_name;

                $decode = jsonDecode($coupon->add_on_pk);
                $num    = 0;

                $count  = count($decode);

                if(isset($decode)){
                    for($i=0;$i<$count;$i++){
                        if($decode[$i]>0){
                          $query  = DB::table('orderitem')->where('order_id',$decode[$i])->first();
                          echo "<br><br> $query->order_name";

                          $num = $num+$query->order_price;
                        }
                    }
                }

                //dd($item);
                //$num = $num + $item->total_amount;


              @endphp

</small>


            </td>
            <td  style="text-align:center;padding-top:10px;"  valign="top">
                <small>
<br><br>
                    @php
                    echo $pk->total_amount;
                    if(isset($decode)){
                        for($i=0;$i<$count;$i++){
                        if($decode[$i]>0){
                          $query  = DB::table('orderitem')->where('order_id',$decode[$i])->first();
                          echo "<br><br> $query->order_price";

                          $num = $num+$query->order_price;
                        }
                        }
                    }
                    @endphp
                </small>

            </td>
            <td>

            </td>
            <td>

            </td>
            <td style="height:200px;padding:5px;padding-top:10px;" colspan="3" valign="top">
                <small style="color:#737373;">
                    ค่าชุดตรวจสุขภาพ ( 1.1.14 )
                </small><br><br>
                <small>
                    @php


                    $coupon = DB::table('tb_coupon')
                    ->where('coupon_id',$_GET['couponid'])
                    ->first();

                    $pk = DB::table('tr_package_name')
                    ->where('uid',$coupon->coupon_package)
                    ->first();

                    echo $pk->package_name;

                    $decode = jsonDecode($coupon->add_on_pk);
                    $num    = 0;

                    $count  = count($decode);
                    if(isset($decode)){
                        for($i=0;$i<$count;$i++){
                            if($decode[$i]>0){
                              $query  = DB::table('orderitem')->where('order_id',$decode[$i])->first();
                              echo "<br><br> $query->order_name";

                              $num = $num+$query->order_price;
                            }
                        }
                    }

                    //dd($item);
                    //$num = $num + $item->total_amount;


                  @endphp

    </small>
            </td>
            <td  style="text-align:center;padding-top:10px;"  valign="top">
                <small>
<br><br>
                    @php
                     if(isset($decode)){
                    echo $pk->total_amount;
                        for($i=0;$i<$count;$i++){
                        if($decode[$i]>0){
                          $query  = DB::table('orderitem')->where('order_id',$decode[$i])->first();
                          echo "<br><br> $query->order_price";

                          $num = $num+$query->order_price;
                        }
                        }
                    }
                    @endphp
                </small>
            </td>
            <td>

            </td>
            <td>

            </td>
        </tr>

        <tr>
            <td rowspan="2"  style="border-right:none !important;">
                <font style="font-size: 10px;">จำนวนงิน</font><br>
                    <font style="font-size: 10px;">Total Amount in Letter</font>
            </td>
            <td  rowspan="2" style="border-right:none !important;border-left:none !important;">
                {{number_format($num+$pk->total_amount)}}
            </td>
            <td  rowspan="2" style="text-align:right;border-left:none !important;">
                <font style="font-size: 10px;">รวมทั้งสิ้น</font><br>
                    <font style="font-size: 10px;">Total</font>
            </td>
            <td>

            </td>
            <td>

            </td>
            <td>

            </td>
            <td rowspan="2"  style="border-right:none !important;">
                <font style="font-size: 10px;">จำนวนงิน</font><br>
                    <font style="font-size: 10px;">Total Amount in Letter</font>
            </td>
            <td  rowspan="2" style="border-right:none !important;border-left:none !important;">
                {{number_format($num+$pk->total_amount)}}
            </td>
            <td  rowspan="2" style="text-align:right;border-left:none !important;">
                <font style="font-size: 10px;">รวมทั้งสิ้น</font><br>
                    <font style="font-size: 10px;">Total</font>
            </td>
            <td>

            </td>
            <td>

            </td>
            <td>

            </td>
        </tr>

        <tr>

            <td>

            </td>
            <td>

            </td>
            <td>

            </td>
            <td>

            </td>
            <td>

            </td>
            <td>

            </td>
        </tr>


    </table>
    <hr>
    <table style="width: 100%;" border="0">
        <tr style="height:15px">
            <td style="width: 50%;text-align: center;">
                <small style="color:Gray;">
                    <font style="font-size: 11px;">
                    โรงพยาบาลอาจมีการเรียนเก็บค่าใช้จ่ายบางรายการ ในกรณีที่บริษัทประกันหรือหน่วยงานต้นสังกัดของท่าน ปฎิเสธการคุ้มครอง
                     เพื่อเป็นการประกันคุณภาพของยาที่จ่ายให้กับผู้รับบริการ ทางโรงพยาบาลขอสงวนสิทธิ์ไม่รับเปลี่ยน หรือรับยาคืน <br>
                    </font>
                     <font style="font-size: 10px;">
                     The hospital may ask for payment, in case that the insurance company or the contract companyrefused the cover fee.
                     For pharmaceutical quality assurance, hospital policy does not permit return or refund of any medicines.
                    </font>
                </small>
            </td>
            <td  style="width: 50%;text-align: center;">
                <small style="color:Gray;">
                    <font style="font-size: 11px;">
                    โรงพยาบาลอาจมีการเรียนเก็บค่าใช้จ่ายบางรายการ ในกรณีที่บริษัทประกันหรือหน่วยงานต้นสังกัดของท่าน ปฎิเสธการคุ้มครอง
                     เพื่อเป็นการประกันคุณภาพของยาที่จ่ายให้กับผู้รับบริการ ทางโรงพยาบาลขอสงวนสิทธิ์ไม่รับเปลี่ยน หรือรับยาคืน <br>
                    </font>
                     <font style="font-size: 10px;">
                     The hospital may ask for payment, in case that the insurance company or the contract companyrefused the cover fee.
                     For pharmaceutical quality assurance, hospital policy does not permit return or refund of any medicines.
                    </font>
                </small>

            </td>
        </tr>

    </table>
    <table border="0" style="width:100%;">
        <tr>
            <td style="width:30%;text-align: center;">
                <br><br>
                <hr style="width:70%;"><br>
                <small>ลายเซ็นผู้ป่วย (Patient Signature)</small>
            </td>
            <td style="width:30%;text-align: center;">
                <br><br>
                <hr style="width:70%;"><br>
                <small>เจ้าหน้าที่การเงิน (Cashier)</small>
            </td>
            <td style="width:30%;text-align: center;">
                <br><br>
                <hr style="width:70%;"><br>
                <small>ลายเซ็นผู้ป่วย (Patient Signature)</small>
            </td>
            <td style="width:30%;text-align: center;">
                <br><br>
                <hr style="width:70%;"><br>
                <small>เจ้าหน้าที่การเงิน (Cashier)</small>
            </td>
        </tr>
    </table>
    <br>
    <table border="0" style="width:100%;">
        <tr>
            <td style="width: 50%;">
            <font style="font-size: 10px;">บริษัท สมิติเวช ศรีราชา จำกัด</font>&nbsp;
            <font style="font-size: 8px;">8 ซอยแหลมเกตุ ถนนเจิมพล ตำบลศรีราชา อำเภอศรีราชา จังหวัดชลบุรี 20110 โทร. 0 38 32 0300 โทรสาร 0 3832 4130</font>
            </td>
            <td style="width: 50%;">
                <font style="font-size: 10px;">บริษัท สมิติเวช ศรีราชา จำกัด</font>&nbsp;
                <font style="font-size: 8px;">8 ซอยแหลมเกตุ ถนนเจิมพล ตำบลศรีราชา อำเภอศรีราชา จังหวัดชลบุรี 20110 โทร. 0 38 32 0300 โทรสาร 0 3832 4130</font>
            </td>
        </tr>
        <tr>
            <td style="width: 50%;">
                <font style="font-size: 11;">Samitivej Sriracha Company Limited</font>&nbsp;
                <font style="font-size: 8px;">8 Soi Laemket, Jermjompol Road, Sriracha, Chonburi 20110 Tel. 0 38 32 0300 Fax. 0 3832 4130</font>
            </td>
            <td style="width: 50%;">
                <font style="font-size: 11px;">Samitivej Sriracha Company Limited</font>&nbsp;
                <font style="font-size: 8px;">8 Soi Laemket, Jermjompol Road, Sriracha, Chonburi 20110 Tel. 0 38 32 0300 Fax. 0 3832 4130</font>
            </td>
        </tr>
    </table>


</body>
</html>
