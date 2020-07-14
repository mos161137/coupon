@extends('thecharity.all_page_use')

@section('content')    

<br>
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-6 order-2 order-lg-1">
                    <div class="welcome-content">




                        <header class="entry-header">
                            <h2 class="entry-title"><i>{!!$case->wb_title !!}</i></h2>
                        </header><!-- .entry-header -->

                        <div class="entry-content mt-5">
                           


                    {!! $case->wb_description !!}

                    <br><br>
                    <b><font color='blue'>การย้อมสี Staining :</font></b> {!!$case->staining !!}
                    <br><br>
                    <b><font color='blue'>ประเภทสิ่งส่งตรวจ (Type of Specimen) : Blood(Hemoculture) :</font></b> {!!$case->tos !!}
                    <br><br>
                    <b><font color='blue'>ลักษณะโคโลนี (Colony Characteristics) :</font></b> <font color="black">{!!$case->colony_detail !!}</font>
                    <br><br>
                    <b><font color='blue'>ลักษณะภายใต้กล้องจุลทรรศน์ (Microscopic Examination) 
 :</font></b> {!!$case->micro_exam !!}
                    <br><br>
                    @if($case->biochemi!="")
                    <b><font color='blue'>ลักษณะชีวเคมี (biochemical characteristic) 
 :</font></b> {!!$case->biochemi !!}
                    @endif



                        </div><!-- .entry-content -->


                    </div><!-- .welcome-content -->
                </div><!-- .col -->

                <div class="col-12 col-lg-6 order-1 order-lg-2">
                    @php
                        $jpic = jsonDecode($case->wb_picmain);
                    @endphp 

                    <img id="map" src="{{url('')}}/pic/{{ $jpic[0] }}" width="100%"><br>

                    <div class="row">
                    @foreach($jpic as $j)
                        <div class="col-3">
                            <img class="mapchange" src="{{url('')}}/pic/{{$j}}" width="100%">
                        </div>
                    @endforeach
                    </div>


                </div><!-- .col -->
            </div><!-- .row -->
        </div><!-- .container -->
    </div><!-- .home-page-icon-boxes -->

<br>

@endsection


@section('endscript')
<script type="text/javascript">
        $('.mapchange').click(function(){
            $("#map").attr("src",$(this).attr('src'));
        });

</script>


@endsection