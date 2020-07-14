@extends('thecharity.all_page_use')

@section('content')    

<br>

<div class="row">
    <div class="col-1"></div>
    <div class="col-10">
<br><h1>การอบรม/ประชุมวิชาการ</h1>

<br><a href="{{url('')}}/pdf/Application_of_MALDI.pdf">1. Application of MALDI_TOF</a>
<br><a href="{{url('')}}/pdf/SPRi.pdf">2. SPRi Application</a>
<br><a href="{{url('')}}/pdf/DirectExam.pdf">3. Staining for Medical Microbiology</a>
<br><a href="{{url('')}}/pdf/TestGrading.pdf">4. Test grading</a>
<br><a href="{{url('')}}/pdf/VS120OLYMPUS.pdf">5. Olympus Application</a>
<br><a href="{{url('')}}/pdf/biobox.pdf">6.โปรแกรมระบบบริหารคลังเชื้อจุลชีพ Bio BOX</a>
<br><a href="{{url('')}}/pdf/bioplus.pdf">7.โปรแกรมระบบบริหารคลังรูปจุลชีพ Bio PLUS</a>


</div>
<div class="col-1"></div>



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