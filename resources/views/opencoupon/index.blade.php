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
          <li class="nav-item active">
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">
             เปิด package</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">
              ชำระเงิน</a>
          </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
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
        </form>
      </div>
    </nav>

            <div class="container-fluid" id="myModal" style="padding-left:5%;padding-right:5%;padding-top:0%;background-color: #F5F5F5;">


                {{-- ตัว Body --}}
                <div class="row" style="margin-top:4%;">
                    <div class="col-6" style=" border-radius:5px;box-shadow:1px 1px 1px 1px grey;    background-color: #ffffff;">
                        {{Form::open(['url'=>'opencoupon'])}}
                        @php
                              $pass = false;
                              while($pass == false){

                              $str1=rand();
                              $re1 = md5($str1);
                              $resu1 = substr($re1,0,3);
                              $str2=rand();
                              $re2 = md5($str2);
                              $resu2 = substr($re2,0,5);
                              $str3=rand();
                              $re3 = md5($str3);
                              $resu3 = substr($re3,0,5);
                              // $ddd=date("mdhi");
                              $result=$resu1.$resu2.$resu3;
                              if( DB::table('tb_coupon')
                              ->where('coupon_gen','=',$result)
                              ->count() == 0 )
                              {
                                  $pass = true;
                              }
                              }
                      @endphp
                      <input type="hidden" name="barcode" id="barcode" value="{{$result}}">
                                <table style="wieght:100%" style="">
                                    <tr><td colspan="3"><center><h3>ข้อมูล</h3></center></td></tr>
                                    <tr>
                                        <td colspan="3"><font size="4" color="red">*</font>&nbsp;ชื่อ-สกุล : </td></tr>
                                          <tr><td>
                                          <select class="form-control" name="prefixname">
                                            <option value="">
                                                เลือก
                                            </option>
                                            <option value="นาย">
                                                นาย
                                            </option>
                                            <option value="นางสาว">
                                                นางสาว
                                            </option>
                                            <option value="นาง">
                                                นาง
                                            </option>
                                        </select></td>
                                        <td> <input class="form-control" id="firstname" name="firstname" placeholder="ชื่อ" type="text" /></td>
                                        <td><input class="form-control" id="lastname" name="lastname" placeholder="นามสกุล"
                                            type="text" /></td><br>
                                    </tr>
                                    <tr><td colspan="2"><font size="4" color="red">*</font>&nbsp;เลขประจำตัวประชาชน :</td><td>ศาสนา :</td></tr>
                                    <tr>
                                        <td colspan="2">
                                            <input type="text" minlength="13" size="13" id="citizenid" class="form-control" name="citizenid" placeholder="13 หลัก" required
                                            /></td>

                                    <td>
                                        <select class="form-control" name="religion">
                                            <option value="พุทธ">
                                                พุทธ
                                            </option>
                                            <option value="คริสต์">
                                                คริสต์
                                            </option>
                                            <option value="อิสลาม">
                                                อิสลาม
                                            </option>
                                            <option value="ไม่ระบุ">
                                                ไม่ระบุ
                                            </option>
                                        </select>
                                        </td>    </tr>

                                    <tr><td colspan="3"><font size="4" color="red">*</font>&nbsp;วัน เดือนปี :</td></tr>
                                    <tr>
                                        <td><div><select class="form-control" name="birthdate">
                                            @php
                                                for($i=1;$i<=31;$i++){
                                                echo "<option value='$i'>";
                                                echo $i;
                                                echo "</option>";
                                                }
                                            @endphp
                                        </select></td><td><select class="form-control" name="birthmonth">
                                            <option value="มกราคม">
                                                มกราคม
                                            </option>
                                            <option value="กุมภาพันธ์">
                                                กุมภาพันธ์
                                            </option>
                                            <option value="มีนาคม">
                                                มีนาคม
                                            </option>
                                            <option value="เมษายน">
                                                เมษายน
                                            </option>
                                            <option value="พฤษภาคม">
                                                พฤษภาคม
                                            </option>
                                            <option value="มิถุนายน">
                                                มิถุนายน
                                            </option>
                                            <option value="กรกฎาคม">
                                                กรกฎาคม
                                            </option>
                                            <option value="สิงหาคม">
                                                สิงหาคม
                                            </option>
                                            <option value="กันยายน">
                                                กันยายน
                                            </option>
                                            <option value="ตุลาคม">
                                                ตุลาคม
                                            </option>
                                            <option value="พฤศจิกายน">
                                                พฤศจิกายน
                                            </option>
                                            <option value="ธันวาคม">
                                                ธันวาคม
                                            </option>
                                        </select></td><td><select class="form-control" name="birthyear">
                                            @php
                                            $a=date("Y");
                                            $b=$a+543;
                                                for($i=2480;($i>=2480 && $i<=$b);$i++){
                                                    echo "<option value=$i>";
                                                    echo $i;
                                                    echo "</option>";
                                                }
                                            @endphp

                                        </select></div></td>
                                    </tr>

                                    <tr><td colspan="2"><font size="4" color="red">*</font>&nbsp;E-mail :</td><td><font size="4" color="red">*</font>&nbsp;Phone :</td></tr>
                                    <tr>
                                        <td colspan="2">
                                            <input id="email" class="form-control" name="email" placeholder="e-mail" size="40" type="text"></td>

                                    <td>
                                        <input id="phone" class="form-control" name="phone" placeholder="Phone Number" type="text"></td>    </tr>

                                    <tr><td colspan="3">ที่อยู่ :<textarea class="form-control" name="address" placeholder="ที่อยู่" rows="3"></textarea><br></td></tr>
                                    <tr>
                                        <td colspan="3" id="form_addon">

                                        </td>
                                    </tr>

                                    <tr><td colspan="3"><center>
                                        <input type="text" style="display:none;" name="package_id" id="package_id" required>
                                        <button class="btn btn-primary" name="" type="submit">
                                            Submit
                                        </button></center><br></td></tr>
                                </table>
                        </form>
                    </div>

                <div class="col-1">
                </div>
                <div class="col-5" style="border: 0px solid red;box-shadow:1px 1px 1px 1px grey; border-radius:5px;    background-color: #ffffff;">
                        @php
                        $select = DB::table('tr_package_name')->get();
                        @endphp
                        <br>
                        <center>
                        <select id="select_package" required>
                            <option>กรุณาเลือก Package</option>
                            @foreach ($select as $ss)
                            <option value="{{$ss->uid}}">{{$ss->package_name}}</option>
                            @endforeach
                        </select>
                        </center>
                    <div id="package_detail" style="margin:10%;">

                    </div>

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

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': '<?php echo csrf_token() ?>'
        }
    });




        $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
        });





        $("#select_package").change(function() {
            var bb=$( "#select_package option:selected" ).val();
            $("#package_id").val(bb);

            $.post("{{url('')}}/jquery",{
                event : 'show_packagedetail',
                uid:bb,
            },function(data,status){
                var package = JSON.parse(data);
                var tr     = "<table border='1' width='100%'>";
                ff = package.data;
                for(let key in ff) {
                  tr = tr+'<tr><td>'+key+'</td><td>'+ff[key]+'<td></tr>';
                }
                tr = tr+"</table>";
                tr = tr+"<br>";

                tr = tr+"<table border='1' width='100%' id='table_addon'>";
                tr = tr+'<tr><td>'+package.package_name+'</td><td>'+package.total_amount+'<td></tr>';
                tr = tr+"</table>";
                tr = tr+'<table border="1" width="100%"><tr><td><font color="white">'+package.package_name+'</font></td><td id="total_price">'+package.total_amount+'<td></tr></table>';
                tr = tr+'<input type="text" name="addon_1" id="text_addon">';


                var c = parseInt(package.total_amount,10);
                $("#package_detail").html(tr);

                $('#text_addon').focusout(function(){
                    var text = $(this).val();
                    $.post("{{url('jquery')}}",{
                        event : 'add_table',
                        val   : text
                    },function(data,status){

                        var addon = JSON.parse(data);

                        $("#table_addon").append("<tr><td>"+text+"</td><td>"+addon.order_price+"</td></tr>");
                        $("#form_addon").append("<input type='hidden' name='addon[]' value='"+addon.order_id+"'>");
                        var b = parseInt(addon.order_price, 10);
                        c = c+b;
                        $("#total_price").html(c);
                    });



                    $(this).val('');
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




            });
        });








    </script>
</body>

</html>
