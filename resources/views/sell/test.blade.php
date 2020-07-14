<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>jQuery Autocompleter Plugin Demo</title>
<link href="{{url('')}}/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link href="{{url('')}}/css/jquery.autocompleter.css" rel="stylesheet" type="text/css">
<link href="{{url('')}}/css/main.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="{{url('')}}/css//bootstrap/css/bootstrap.min.css" rel="stylesheet" />


</head>

<body>

<main>
<div class="field">
<div class="icon"></div>
<center>
   <input type="text" class="form-control" style="border:1px solid black" name="nope" id="nope" />
</center>
<button id="addon_btn">เพิ่ม</button><br>
<input type="text" name="addon[]" id="addon" value="">
<p id="test_val"></p>
<hr>
<p id="test_text"></p>
</div>
</main>
<script src="{{url('')}}/js/jquery1.min.js"></script>
<script src="{{url('')}}/js/jquery.autocompleter.js"></script>
@php
    $users = DB::table('users')->get();
@endphp
<script type="text/javascript">
var bb =$("#nope").val();
var arr =-1;
  $("#addon_btn").click(function(){
     arr = arr+1;
    $("#test_val").append($("#nope").val()+'<button id="'+arr+'">ลบ</button>'+'<br>');
    $("#test_text").append('<input type="text" name="addon['+arr+']" id="'+arr+'" value="'+$("#nope").val()+'">'+'<br>');
    $("#"+arr).click(function(){
        var id_a =this.id;
        // alert("#addon["+this.id+"]");
        $("#"+id_a).remove();
        $(this).remove();
        // $("#addon["+this.id+"]").remove();
    });
  });
var colors =
[
    @foreach ($users as $mm)
    {
        "hex": "#EFDECD",
        "label": "{{$mm->email}}",
        "rgb": "(239, 222, 205)"
    },
    @endforeach
];

$(function () {
  $('#nope').autocompleter({
        // marker for autocomplete matches
        highlightMatches: true,

        // object to local or url to remote search
        source: colors,

        // show hint
        hint: true,

        // abort source if empty field
        empty: false,

        // max results
        limit: 5,

        callback: function (value, index, selected) {
            if (selected) {
                $('.icon').css('background-color', selected.hex);
            }
        }
    });
});







// ----
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

</body>
</html>
