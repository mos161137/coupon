@extends('thecharity.all_page_use')

@section('content')    

<br>
    <div class="container container-full">
        <div class="ms-paper">
            <div class="row">
                <div class="col-lg-12 ms-paper-content-container">
                    <div class="ms-paper-content" style="
  border-radius: 25px;
  border: 2px solid #cceeff;
  padding: 20px; 

">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                    <i class="fa fa-globe">
                                    </i>
                                    {{@$social_topic[0]->topic_title}}
                                </h3>
                            </div>
                            <div class="panel-body">
                                {!! @$social_topic[0]->topic_detail !!}
                                
                                @if(@$social_topic[0]->topic_pic!="")
                                    {{$social_topic[0]->topic_pic}}
                                <img src="{{url('')}}/pic/{{$social_topic[0]->topic_pic}}" width="100%">
                                    @endif
                                    <br>
                                        Authur : {{@$social_topic[0]->name}}
                                    </br>
                                </img>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br>

        @foreach($social_comment as $sc)


        <div class="ms-paper" style="
              border-radius: 25px;
              border: 2px solid #cceeff;
              padding: 20px; 

            ">
            <div class="row">
                <div class="col-lg-12 ms-paper-content-container">
                    <div class="ms-paper-content">
                        <div class="panel-heading">
                            <font color="green">
                                <strong>
                                    User :
                                </strong>
                            </font>
                            {{--$sc->name--}}
                            <br>
                                <font color="green">
                                    <strong>
                                        Description :
                                    </strong>
                                </font>
                                {!! $sc->comment_description !!}
                                
                                @if($sc->comment_pic!="")
                                    <img src="{{url('')}}/pic/{{$sc->comment_pic}}" width="25%">
                                @endif
                                    <br>
                                    </br>
                                </img>
                            </br>
                        </div>
                    </div>
                </div>
            </div>
        </div>

                <br>
                @endforeach
            </div>
        </div>

        <br>
        <div class="ms-paper">
            <div class="row">
                <div class="col-lg-12 ms-paper-content-container">
                    <div class="ms-paper-content">
                        {{ Form::open(['method'=>'put','route'=>['social.update',Request::segment(2)],'enctype'=>'multipart/form-data'])}}
                        <div class="row">
                            <div class="col-lg-12">
                                <textarea class="form-control" id="summary-ckeditor" name="comment_description" rows="3">
                                </textarea>
                            </div>
                            <div class="col-lg-2">
                                <input id="inputFile" multiple="" name="file" type="file"/>
                            </div>
                            <div align="right" class="col-lg-10">
                                <button class="btn btn-raised btn-primary" type="submit">
                                    Submit
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <br>

@endsection

@section('endscript')
<script src="{{ asset('vendor/unisharp/laravel-ckeditor/ckeditor.js') }}">
</script>
<script>
    CKEDITOR.replace( 'summary-ckeditor',    {
            filebrowserBrowseUrl : '{{url('')}}/ckfinder/samples/full-page-open.html',
            filebrowserUploadUrl : '{{url('')}}/uploader/upload.php'
        } );
</script>
@endsection