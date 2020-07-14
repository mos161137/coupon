@extends('thecharity.all_page_use')

@section('content')    

<br><br><br>

<center>
    <h1>โครงสร้างหน่วยงาน</h1>
<img src="{{url('')}}/pic_index/flow.png">
</center>

<br><br><br>



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