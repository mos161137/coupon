@extends('layouts.template')



@section('content')

    @foreach($package as $p)
    <div class="row">
        <div class="col-6">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        @php
                            $txt = array();
                            $item = json_decode($p->item_textall);
                        @endphp
                        <div class="col-12">

                            {{class_basename(Route::current()->controller)}}<br>
                            {{class_basename(Route::currentRouteAction())}}<br>
                            {{class_basename(Route::currentRouteName())}}<br>

                            {{$p->package_name}}
                        </div>
                        @foreach($item as $it => $i)
                            <div class="col-1">
                                {{$it}}
                            </div>
                            <div class="col-11">
                                {{$i}}
                            </div>
                        @endforeach
                        <div class="col-6">
                            <button class="btn btn-danger">
                                {{$p->pk_status}}ปิด package
                            </button>
                        </div>
                        <div class="col-6">
                            <a class="btn btn-success" href="{{url('')}}/selectpackage/{{$p->uid}}">
                                ซื้อ package
                            </a>
                        </div>
                        @php
                        // $json = json_encode($txt,JSON_UNESCAPED_UNICODE);
                        // DB::table('tr_package_name')->where('uid','=',$p->uid)->update(['item_textall'=>$json]);
                        @endphp
                    </div>
                </div>
            </div>
        </div>



        <div class="col-6">
            @foreach ($pkwait as $item)
            <div class="row">
            <div class="col-12">
    <div class="card" style="background-color:lightblue">
        <div class="card-body">
            <div class="row">
                    <div class="col-12">
                    ADSG
                    </div>
            </div>
        </div>
    </div>
            </div>
    </div>
            @endforeach


            @foreach ($pkpay as $item)
            <div class="row">
            <div class="col-12">
    <div class="card">
        <div class="card-body">
            <div class="row">
                    <div class="col-12">
                    ADSG
                    </div>
            </div>
        </div>
    </div>
            </div>
    </div>
            @endforeach






        </div>








    </div>
    @endforeach

@endsection
