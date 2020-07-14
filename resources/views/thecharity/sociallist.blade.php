@extends('thecharity.all_page_use')

@section('content')    

<br>
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-12 order-2 order-lg-1">
                    <div class="welcome-content">



                  <a href="{{url('')}}/social/create" class="btn btn-raised btn-primary">+ NEW Webboard<div class="ripple-container"></div></a>
                  <br><br>
                  <div class="card">
                    <table class="table table-no-border" width="100%">
                      <thead>
                        <tr>
                          <th>#</th>
                          <th width="150">Picture</th>
                          <th>Title</th>
                          <th>Date</th>
                          <th width="50">Read</th>
                        </tr>
                      </thead>
                      <tbody>
                        @foreach($social_topic as $st)
                        <tr>
                          <td>{{$st->topic_id}}</td>
                          @if($st->topic_pic=="")
                            <td></td>
                          @else
                            <td><img src="{{url('')}}/pic/{{$st->topic_pic}}" width="150" height="100"></td>
                          @endif
                          <td>{{$st->topic_title}}</td>
                          <td>{{$st->topic_date}}</td>
                          <td><a href="{{url('')}}/social/{{$st->topic_id}}" class="btn btn-raised btn-primary">Read<div class="ripple-container"></div></a></td>
                        </tr>
                        @endforeach


                      </tbody>
                    </table>

</div></div></div></div></div>

<br>

@endsection