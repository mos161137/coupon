@extends('thecharity.all_page_use')

@section('linkplus')
    <link href="{{url('')}}/vendors/fullcalendar/dist/fullcalendar.min.css" rel="stylesheet">
    <link href="{{url('')}}/vendors/fullcalendar/dist/fullcalendar.print.css" rel="stylesheet" media="print">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    @endsection
@section('content') 
    <div id="app">
        <app></app>
    </div>

    <script src="js/app.js" charset="utf-8"></script>
    @endsection
@section('scriptplus')
    <script src="{{url('')}}/vendors/moment/min/moment.min.js"></script>
    <script src="{{url('')}}/vendors/fullcalendar/dist/fullcalendar.min.js"></script>
    
    <script type="text/javascript" src="js/jquery.toastx.js"></script>
    @endsection
@section('endscript')
    <script type="text/javascript">
        $('#toast').click(function(){
            $("#app").append("ddedddd");        
        });
    </script>
    
    @endsection
