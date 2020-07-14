@extends('layouts.template')

@section('content')
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <style>
            table {
              border-collapse: collapse;
              width: 100%;
            }

            th, td {
              padding: 8px;
              text-align: left;
              border-bottom: 1px solid #ddd;
            }
            </style>

        <form class="form-inline md-form mr-auto mb-4" method="get">
                <input class="form-control mr-sm-2" name="search" type="text" placeholder="Search" aria-label="Search">
                <button class="btn blue-gradient btn-rounded btn-sm my-0" type="submit">Search</button>
        </form>

<br>
<table>

    @foreach ($in as $aa)
    <tr>
    <td>{{$aa->coupon_id}}</td>
    <td>{{$aa->coupon_package}}</td>
    <td>{{$aa->firstname}}</td>
    <td>{{$aa->coupon_saleuser}}</td>
    <td>{{$aa->coupon_pid}}</td>
    <td>{{$aa->coupon_saleoutdate}}</td>

    <td><button type="button" vid="{{$aa->coupon_id}}"
    class="btn btn-info btn-sm" data-toggle="modal"
    data-target="#myModal">จ่ายคูปอง</button></td>
</tr>
    @endforeach
</table>
    <div class="modal fade" id="myModal" role="dialog">
            {{Form::open(['url'=>'accounting'])}}
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">

                  <h4 class="modal-title">ยืนยันการจ่ายเงินของ Sale</h4>
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
            <div class="modal-dialog">

                  <h3>ชื่อผู้ขาย : {{Auth::user()->firstname}}</h3>
                  <input type="hidden" name="sale_id" value="{{Auth::user()->id}}">
                  <p><input type="number" name="cash"></p>
                  <p>Time : @php
                      date_default_timezone_set('Asia/Bangkok');
                        echo date('Y-m-d H:i:s');

                  @endphp</p>

                    <input type="hidden" name="packageid" id="packageid">



                </div>
                <button type="submit" class="btn btn-primary" idval="" id="btnpackageid">Submit</button>
              </div>

            </div>
        </form>
          </div>

<script>
    $('.btn-info').click(function(){
        //alert();
        $('#packageid').val($(this).attr('vid'));
    });
    </script>



@endsection
