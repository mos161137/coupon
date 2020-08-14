_<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>SAMITIVEJ SRIRACHA</title>
  <link rel = "icon" href="{{url('')}}/logo/icon.png"
        type = "image/x-icon">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <link rel="stylesheet" href="{{url('')}}/css/simple-sidebar.css" rel="stylesheet" />
  <link rel="stylesheet" href="{{url('')}}/css//bootstrap/css/bootstrap.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<style>
.body tr td:first-child{
    text-align: center;
    vertical-align: middle;
}
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
    padding-top: 4%
  }

#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
  padding-top: 50px;

}
.del{
    color: #fff;
    background: red;
    padding: 2px;
    box-shadow: 1px 1px 5px #dc74b6;
}
.del:hover{
    background: rgb(143, 8, 8);
    box-shadow: 1px 1px 5px #f17f4b;
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
body{
  background-color: #F5F5F5;
}
</style>
</head>

<body>
    {{-- บาบน --}}
    <meta name="csrf-token" content="{{ csrf_token() }}">
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
            <a class="nav-link " href="{{url('')}}/opencoupon" tabindex="-1" aria-disabled="true">
             เปิด package</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">
            package ใหม่</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">
              ชำระเงิน</a>
          </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <label style="padding: 0;">
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

            <div class="container-fluid" id="myModal" style="padding-left:5%;padding-right:5%;padding-top:0%;background-color: #F5F5F5;">


                {{-- ตัว Body --}}

        <form action="{{url('')}}/opencoupon/1" method="post"  enctype="multipart/form-data"  autocomplete="off">
            @method('PUT')
            @csrf
            <div class="row" style="margin-top:4%;">


                <div class="col-12" style="margin: auto;border: 0px solid red;box-shadow:1px 1px 1px 1px grey; border-radius:5px;background-color: #ffffff;margin-top: 0;">
                    <div class="row" style="margin-top: 20px;">
                        <div class="col-12" style="text-align: center;"><h5>สร้าง Package ใหม่</h5></div>
                    </div>
                    <div class="row" style="margin-top: 15px;">
                        <div class="col-9"><input type="text" class="form-control form-control-sm" id="text_addon" placeholder="ชื่อ package"></div>
                        {{-- <div class="col-2"><input type="number" class="form-control form-control-sm"  id="price" placeholder="ราคา"></div> --}}
                        <div class="col-3"><input type="button" class="add-row btn btn-primary btn-sm" value="Add Package" style="width: 100%;"></div>
                    </div>
                    <table class="table table-sm" style="margin-top: 15px;">
                        <thead>
                            <tr class="table-primary">
                                <th style="width: 5%;text-align:center;">เลือก</th>
                                <th style="width: 85%;text-align:center;">ชื่อ Package</th>
                                {{-- <th style="text-align:center;">ราคา</th> --}}
                            </tr>
                        </thead>
                        <tbody class="body">
                            {{-- <tr>
                                <td><input type="checkbox" name="record"></td>
                                <td>Peter Parker</td>
                                <td>peterparker@mail.com</td>
                            </tr> --}}
                        </tbody>
                    </table>
                    <div class="row" style="margin-top: 20px;margin-bottom:20px;">
                        <div class="col-3"><button type="button" class="delete-row btn btn-danger btn-sm">ลบที่เลือก</button></div>
                    </div>
                    <div class="row">
                        <div class="col-10"><b>ชื่อ ชุด Package :</b></div>
                        <div class="col-2"><b>ราคา ชุด Package :</b></div>
                    </div>
                    <div class="row">
                        <div class="col-10"><input type="text" name="package_name" class="form-control" id=""> </div>
                        <div class="col-2"><input type="number" name="total_amount" class="form-control" id=""> </div>
                    </div>
                    <center>
                        {{-- <input type="text" style="display:none;" name="package_id" id="package_id" required> --}}
                        <br>
                        <button class="btn btn-primary" name="" type="submit">
                            เพิ่ม ชุด Package
                        </button></center>
                        <br>
                </form>






                    {{-- <div class="row" style="margin-top: 5px;">
                        <div class="col-12" style="text-align: center;"><h5>เพิ่ม ชุด Package</h5> </div>
                    </div>
                    <div class="row">
                        <div class="col-10">
                            <input type="text" name="package" class="form-control text_addon" id="text_addon">
                        </div>
                        <div class="col-2">
                            <button class="btn btn-success btn-sm addpackage" style="width: 100%;">ADD</button>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 15px;">
                        <div class="col-12">
                            <hr>
                            <div class="row">
                                <div class="col-8" style="text-align: center;">ชื่อ Package</div>
                                <div class="col-3" style="text-align: center;">ราคา</div>
                                <div class="col-1"></div>
                            </div>
                            <hr>
                        </div>
                        <div class="col-12" style="margin-top: 5px;">
                            <ol></ol>
                        </div>
                    </div> --}}

                </div>


            </div>

                {{-- ท้าย body --}}
<br><br>



    <!-- /#wrapper -->
    {{-- จบบาบน --}}


    <!-- Menu Toggle Script -->
    {{-- <script>
        $("#menu-toggle").click(function(e) {
          e.preventDefault();
          $("#wrapper").toggleClass("toggled");
        });
    </script> --}}

    <script type='text/javascript' src="{{url('')}}/js/jquery/jquery.js"></script>
    <script type='text/javascript' src="{{url('')}}/js/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>


    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
    <script src="{{url('')}}/js/jquery-ui.js"></script>


    <script>
        // alert();

    $(".addpackage").click(function(){
        var texval = $(".text_addon").val();
        $("ol").append("<li class=lit>"+"<div class=row>"+"<div class=col-8 style=align-self:center;>"+texval+"</div>"+"<div class=col-3 style=align-self:center;>"+"<input type=text class=form-control>"+"</div>"+"<div class=col-1 style=align-self:center;text-align: center;>"+"<label class=del>"+"ลบ"+"</label>"+"</div>"+"</div>"+"</li>");

    });
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': '<?php echo csrf_token() ?>'
        }
    });




        $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
        });







        $("#text_addon").autocomplete({

source: function(request, response)
{
    $.ajax(
    {
        url: "{{url('add_on')}}",
        data: {term : request.term},
        dataType: "json",
        success: function(data)
        {
            var resp = $.map(data,function(obj)
            {
                return obj.order_name;
            });
            response(resp);
        }
    });
},
minLength: 1
});





    </script>
    <script>
        $(document).ready(function(){
            $(".add-row").click(function(){
                var name = $("#text_addon").val();
                // var price = $("#price").val();
                // var markup = "<tr><td style=text-align-last;><input type='checkbox' name='record'></td><td>"+"<input type=hidden name=package[] value="+name+">"+"<input type=hidden name=p_price[] value="+price+">" + name + "</td><td style=text-align:right;>" + price + "</td></tr>";
                var markup = "<tr><td style=text-align-last;><input type='checkbox' name='record'></td><td>"+"<input type=hidden name=package[] value='"+name+"'>"+ name + "</td></tr>";
                $("table .body").append(markup);
                $("#text_addon").val("");
            });

            // Find and remove selected table rows
            $(".delete-row").click(function(){
                $("table tbody").find('input[name="record"]').each(function(){
                    if($(this).is(":checked")){
                        $(this).parents("tr").remove();
                    }
                });
            });
        });
    </script>
</body>

</html>
