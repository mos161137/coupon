@extends('thecharity.all_page_use')

@section('content')    

<style>
#justify {
  text-align: justify;
  text-justify: inter-word;
}
</style>

<br><br><br>

<div class="row">
    <div class="col-1"></div>
    <div class="col-10">
<br><h1>สิทธิบัตร นวัตกรรม และ รางวัลวิจัย </h1>

<div id="justify">
<br><br>1.  Detection of bacterium belonging to genus campylobacter which targets cytolethal distending toxin. WO 2009028662 A1 Inventor: Shinji Yamasaki, Worada Samosorunsuk, Masahiro Asakura) 5 Mar 2009.
<br><br>2.  Edible coating from chitosan blended with carboxymethylcellulose for extending storage life of freshcut fruits and vegetables. Inventor: Sorada Kanokpanonth, Apita Bunsiri, Pornchai Rachatanapun, Worada Samosornsuk, Goragot Supanakorn. (on process)
<br><br>3.  Worada Samosornsuk, Outstanding research presentation in the title of “Rapid identification of Burkholderia pseudomallei in blood cultures by monoclonal antibody assay”, 5th Annual Conference of Ministry of Public Health, Phitsanulok, Thailand, 4 September 1996
<br><br>4.  Worada Samosornsuk, Award of outstanding researcher, Thammasat University “An inventor of the international patent in the topic of Method for detecting CDT and bacteria of the genus Campylobacter using it as a target” 18 November 2008
</div>




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