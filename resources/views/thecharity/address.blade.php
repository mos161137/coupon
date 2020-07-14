@extends('thecharity.all_page_use')

@section('content')    

<br>

<div class="row">
    <div class="col-3"></div>
    <div class="col-6">
<br><h1>วัตถุประสงค์</h1>

<br>1.  วิจัย และผลิตผลงานวิชาการ งานวิจัย และนวัตกรรม เพื่อตอบสนองความต้องการของประเทศ
<br>2.  หน่วยงานให้การประเมินคุณภาพของห้องปฏิบัติการทางจุลชีววิทยา
<br>3.  แหล่งผลิตบัณฑิต ที่มีความสามารถในการผลิตงานวิจัยทางด้านชีวโมเลกุล 
<br>4.  แหล่งฝึกอบรม และ ประชุมวิชาการด้านจุลชีววิทยาและชีวโมเลกุล
<br>5.  แหล่งฝึกงานด้านการวิจัยแก่นักวิจัย นักศึกษา และผู้ที่สนใจ


</div>
<div class="col-3"></div>



</div>
<br><br><br><br><br><br>
@endsection



@section('endscript')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


@endsection



@php


function staff($picname,$staffname,$detail){


echo '

                            <div class="col-4">
                                <div class="cause-wrap">
                                    <figure class="m-0">
                                        <img src="'.url('').'/pic_index/staff/'.$picname.'" alt="">
                                    </figure>

                                    <div class="cause-content-wrap">
                                        <header class="entry-header d-flex flex-wrap align-items-center">
                                            <h3 class="entry-title w-100 m-0"><a href="#">'.$staffname.'</a></h3>
                                        </header><!-- .entry-header -->

                                        <div class="entry-content">
                                            <p class="m-0">'.$detail.'</p>
                                        </div><!-- .entry-content -->
                                    </div><!-- .cause-content-wrap -->
                                </div><!-- .cause-wrap -->
                            </div><!-- .swiper-slide -->

';

}

@endphp