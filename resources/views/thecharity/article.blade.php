@extends('thecharity.all_page_use')

@section('content')    
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-12">
                        <div class="section-heading">
                            <h2 class="entry-title">บทความใหม่</h2>
                        </div><!-- .section-heading -->

    @foreach($case as $c)


    @php
        $pic  = json_decode($c->wb_picmain);
    @endphp 

    <div class="event-wrap d-flex flex-wrap justify-content-between">
        <figure class="m-0">
            <img src="{{url('')}}/pic/{{$pic[0]}}" alt="">
        </figure>

        <div class="event-content-wrap">
            <header class="entry-header d-flex flex-wrap align-items-center">
                <h3 class="entry-title w-100 m-0"><a href="#">{!!$c->wb_title!!}</a></h3>
{{--
                <div class="posted-date">
                    <a href="#">{{$c->wb_datetime}}</a>
                </div>

                <div class="cats-links">
                    <a href="#">{{$c->name}}</a>
                </div>
--}}
            </header>

            <div class="entry-content">
                <p class="m-0">{{$c->micro_exam}}</p>
            </div>

            <div class="entry-footer">
                <a href="{{url('')}}/article/{{$c->case_id}}">อ่านต่อ</a>
            </div>
        </div>
    </div>
    @endforeach

                    </div><!-- .upcoming-events -->
                </div><!-- .col -->
            </div><!-- .row -->
        </div><!-- .container -->
    </div><!-- .home-page-events -->


{{$case->links()}}


@endsection



@section('endscript')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
@endsection