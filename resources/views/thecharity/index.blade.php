@extends('thecharity.all_page_use')

@section('content')    
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <style>
    .divborder{
        position: relative;
        background-color: white;
    }
    </style>
    <br>
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <div class="row">
                <div class="col-6 divborder">
                <img src="{{url('')}}/pic_index/map.png" width="650">

                {!! tower('tower1','อาคาร 1',35,60,132,130) !!}
                {!! tower('tower2','อาคาร 2',512,125,110,85) !!}
                {!! tower('tower3','อาคาร 3',525,253,90,65) !!}   
                {!! tower('tower4','อาคาร 4',405,265,80,100) !!}   


                </div>

                <div class="col-6">
                    <h3 id="roomname"></h3>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>
                                    #
                                </th>
                                <th>
                                    Name
                                </th>
                                <th>
                                    Position
                                </th>
                                <th>
                                    เวลา
                                </th>
                            </tr>
                        </thead>
                        <tbody id="showstaff">
        @foreach($jobuser as $j)
            @php
            //$rand = rand(1,10)*10;

            $c = (-1*$j->rssibeacon)/10;
            @endphp
            <tr>
                <td>
                    {{$j->id}}
                </td>
                <td>
                    <a class="staff" staff="{{$j->item_mac}}">
                    {{$j->name}}
                    </a>
                </td>
                <td>
                    {{$c}} M
                </td>
                <td>
                    <button 
                    class='btn btn-success'  
                    data-toggle='modal' 
                    data-target='#myModal' 
                    type='submit' 
                    staffname='{{$j->name}}'
                    id='{{$j->id}}'
                    >
                        จ่ายงาน
                    </button>
                </td>
            </tr>
        @endforeach
    


        
                        </tbody>
                    </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br>


@endsection



@section('endscript')

    <script src="js/app.js" charset="utf-8"></script>
    <script src="{{url("")}}/js/jquery.min.js"></script>

    <script type="text/javascript">
        $.ajaxSetup({headers: {'X-CSRF-TOKEN': '<?php echo csrf_token() ?>'}});

        $('#imgtower1').hide();
        $('#imgtower2').hide();
        $('#imgtower3').hide();
        $('#imgtower4').hide();


        {!! towerClick('tower1','อาคาร 1') !!}
        {!! towerClick('tower2','อาคาร 2') !!}
        {!! towerClick('tower3','อาคาร 3') !!}
        {!! towerClick('tower4','อาคาร 4') !!}


        $('.staff').click(function(){
            var item_mac = $(this).attr('staff');
            $.post('{{url("")}}/towerjob',
            {
                event:'staff',
                jobid:'1',
                item_mac: item_mac
            },
            function(data,status){
 
                $('#imgtower1').hide();
                $('#imgtower2').hide();
                $('#imgtower3').hide();
                $('#imgtower4').hide();

                var obj = JSON.parse(data);
                if(obj[0]=="0003"){
                    $('#imgtower3').show();
                }    
                if(obj[1]=="0003"){
                    $('#imgtower3').show();
                }
                if(obj[0]=="0002"){
                    $('#imgtower2').show();
                }    
                if(obj[1]=="0002"){
                    $('#imgtower2').show();
                }

            }); 
        });


        $(document).ready(function(){



            $(document).on('click','.btn-success',function(){
               $("#modal_user_id").val($(this).attr('id'));
               $("#staffname").html($(this).attr('staffname'));
            });
        });

        function towerreload(){
        $('.staff').click(function(){
            var item_mac = $(this).attr('staff');
            $.post('{{url("")}}/towerjob',
            {
                event:'staff',
                jobid:'1',
                item_mac: item_mac
            },
            function(data,status){
 
                $('#imgtower1').hide();
                $('#imgtower2').hide();
                $('#imgtower3').hide();
                $('#imgtower4').hide();

                var obj = JSON.parse(data);
                if(obj[0]=="0003"){
                    $('#imgtower3').show();
                }    
                if(obj[1]=="0003"){
                    $('#imgtower3').show();
                }
                if(obj[0]=="0002"){
                    $('#imgtower2').show();
                }    
                if(obj[1]=="0002"){
                    $('#imgtower2').show();
                }

            }); 
        });
        }





    </script>
@endsection

@php
function tower($name,$txt,$left,$top,$width,$height)
{
    $html = "
        <style>
        .{$name}{
        left: {$left}px;
        top: {$top}px;
        width: {$width}px;
        height: {$height}px;
        //background-color: black;
        }
        .link{$name}{
        position: absolute;
        left: {$left}px;
        top: {$top}px;
        width: {$width}px;
        height: {$height}px;
        }
        </style>
        <a id='{$name}' class='link{$name}' data-toggle='tooltip' title='$txt'>
        <div class='{$name}' align='center'>
            <img id='img{$name}' src='".url('')."/pic_index/mappointer.gif'>
        </div>
        </a>
    ";

    return $html;
}

    function towerClick($name,$txt){
        $html = "
        $('#{$name}').click(function(){
            $.post('".url("")."/towerjob',
            {
                event:'{$name}',
                jobid:'1'
            },
            function(data,status){
                $('#imgtower1').hide();
                $('#imgtower2').hide();
                $('#imgtower3').hide();
                $('#imgtower4').hide();

                $('#img{$name}').show();

                $('#showstaff').html(data);
                $('#roomname').html('{$txt}'); 
                towerreload();
            }); 
        });
        ";
        return $html;
    }

@endphp