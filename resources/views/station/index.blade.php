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

                {!! tower('tower1','อาคาร 1',360,240,132,130) !!}
                {!! tower('tower2','อาคาร 2',100,60,40,40) !!}
                {!! tower('tower3','อาคาร 3',100,340,40,40) !!}   
 


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
                    {{$j->item_name}}
                    </a>
                </td>
                <td>
                    {{$c}} M
                </td>
                <td>
                    <button 
                    class='btn btn-success staff'  
                    data-toggle='modal' 
                    data-target='#myModal' 
                    type='submit' 
                    staff='{{$j->item_mac}}'
                    id='{{$j->item_id}}'
                    >
                        ค้นหา
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

<audio id="my_audio" src="{{url('')}}/test/noti.mp3"></audio>
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


        {!! towerClick('tower1','ตู้เก็บของ') !!}
        {!! towerClick('tower2','ทางไปจุด A') !!}
        {!! towerClick('tower3','ทางไปจุด B') !!}
        


        setInterval(function(){ 

            $.post('{{url("")}}/towerjob',
            {
                event:'check_item',
            },
            function(data,status){

                //alert(data);
                var res = data.split("#");

                //var obj = JSON.parse(data);
                if(res[0]=="0003"){
                    
                    $("#my_audio").get(0).play();
                    $('#imgtower3').show();
                    alert(res[1]);
                }    
                if(res[0]=="0002"){
                    $("#my_audio").get(0).play();
                    $('#imgtower2').show();
                    alert(res[1]);
                }    

            }); 

        }, 3000);



        $('.staff').click(function(){
            
            var item_mac = $(this).attr('staff');

            //alert(item_mac);

            $.post('{{url("")}}/towerjob',
            {
                event:'staff',
                jobid:'1',
                item_mac: item_mac
            },
            function(data,status){
                
                
                //alert(data);

                $('#imgtower1').hide();
                $('#imgtower2').hide();
                $('#imgtower3').hide();
                $('#imgtower4').hide();
                //var obj = JSON.parse(data);
                if(data=="0003"){$('#imgtower3').show();}    
                if(data=="0002"){$('#imgtower2').show();}    
                if(data=="0001"){$('#imgtower1').show();}                    
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
                //var obj = JSON.parse(data);
                if(data=="0003"){
                    $('#imgtower3').show();
                }    
                if(data=="0002"){
                    $('#imgtower2').show();
                }    
                if(data=="0001"){$('#imgtower1').show();}                   
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
        background-color: #E3E3E3;
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