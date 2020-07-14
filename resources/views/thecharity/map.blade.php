@extends('thecharity.all_page_use')

@section('content')    

<br>

<div class="row">


                <div class="col-12">
                    <div class="contact-gmap">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7740.18611981781!2d100.60697082488738!3d14.072465572787522!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x314049cfeeb42c4f!2z4LiE4LiT4Liw4Liq4Liy4LiY4Liy4Lij4LiT4Liq4Li44LiC4Lio4Liy4Liq4LiV4Lij4LmMIOC4oeC4q-C4suC4p-C4tOC4l-C4ouC4suC4peC4seC4ouC4mOC4o-C4o-C4oeC4qOC4suC4quC4leC4o-C5jCDguKPguLHguIfguKrguLTguJU!5e0!3m2!1sth!2sth!4v1564415587957!5m2!1sth!2sth" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>
                </div>

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