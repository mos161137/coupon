<!DOCTYPE html>
<html lang="en">
<head>
    <title>SAMITIVEJ SRIRACHA</title>
  <link rel = "icon" href="{{url('')}}/logo/icon.png"
        type = "image/x-icon"> 
    <meta charset="utf-8">
    <?php /*    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="{{url('')}}/thecharity/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{url('')}}/thecharity/css/font-awesome.min.css">
    <link rel="stylesheet" href="{{url('')}}/thecharity/css/elegant-fonts.css">
    <link rel="stylesheet" href="{{url('')}}/thecharity/css/themify-icons.css">
    <link rel="stylesheet" href="{{url('')}}/thecharity/css/swiper.min.css">
    <link rel="stylesheet" href="{{url('')}}/thecharity/style.css">
    */ ?>
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<meta name="csrf-token" content="{{ csrf_token() }}">

</head>
<body class="single-page about-page">


@php
//use Moura137\LaravelElephant\LaraElephantIO;
//Elephant::emit('eventMsg', array('foo' => 'bar'));

@endphp





<header class="site-header">


    <div class="nav-bar">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    
                    <script src="{{url('')}}/js/tr.menu.js" type="text/javascript"></script>
                    <link rel="stylesheet" href="{{url('')}}/css/tr.menu.css" type="text/css" />
                    
                    <div class="menu" id="MainMenu"></div>
            
<?php /*
                    <nav class="site-navigation d-flex justify-content-end align-items-center">
                        <ul class="d-flex flex-column flex-lg-row justify-content-lg-end align-content-center">
                            <li class="current-menu-item"><a href="{{url('')}}">หน้าแรก</a></li>
                            <li><a href="{{url('')}}/about">เกี่ยวกับเรา</a></li>
                            <li><a href="{{url('')}}/causes">ทีมวิจัย</a></li>
                            {{--
                            <li><a href="{{url('')}}/portfolio">ภาพกิจกรรม</a></li>
                            --}}
                            <li><a href="{{url('')}}/news">ข่าวสาร</a></li>
                            {{--
                            ประซาสัมพันธ์
                            ประมวณภาพกิจกรรม
                            --}}


                            <li><a href="{{url('')}}/contact">ติดต่อเรา</a></li>



                        </ul>



                    </nav><!-- .site-navigation -->
                        */
                        ?> 
                    <div class="hamburger-menu d-lg-none">
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                    </div><!-- .hamburger-menu -->
                </div><!-- .col -->
            </div><!-- .row -->
        </div><!-- .container -->
    </div><!-- .nav-bar -->
</header><!-- .site-header --><br>
<div class="row">
    {{-- <div class="col-12">
        <a class="d-block" href="{{url('')}}" rel="home"><img style="height:65px; padding-left:37%;" class="d-block" src="{{url('')}}/logo/logo01.jpg" alt="logo"></a>
    </div> --}}
</div><br>

    @yield('content')

















<?php /*

    <footer class="site-footer">
        <div class="footer-widgets">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-6 col-lg-3">
                        <div class="foot-about">
                            <h2><a class="foot-logo" href="#"><img src="{{url('')}}/images/logo_web.png" alt="" width="100"></a></h2>

                            <p>หน่วยวิจัยนวัตกรรมระดับโมเลกุล มหาวิทยาลัยธรรมศาสตร์ เป็นหน่วยวิจัย สังกัดคณะสหเวชศาสตร์ มหาวิทยาลัยธรรมศาสตร์ มีหน้าที่ผลิตงานวิจัย และนวัตกรรม เพื่อตอบสนองความต้องการของประเทศ  เป็นแหล่งฝึกอบรม และให้การประเมินคุณภาพของห้องปฏิบัติการทางจุลชีววิทยา เพื่อส่งเสริมความรู้ และงานวิจัยด้านจุลชีววิทยาและชีวโมเลกุล</p>

                            <ul class="d-flex flex-wrap align-items-center">
                                <li><a href="#"><i class="fa fa-pinterest-p"></i></a></li>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                <li><a href="#"><i class="fa fa-behance"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div><!-- .foot-about -->
                    </div><!-- .col -->

                    <div class="col-12 col-md-6 col-lg-3 mt-5 mt-md-0">
                        <h2>Useful Links</h2>

                        <ul>
                            <li><a target="_blank" href="https://tu.ac.th/">มหาวิทยาลัยธรรมศาสตร์ ศูนย์รังสิต</a></li>
                            <li><a target="_blank" href="http://allied.tu.ac.th/medical-technology/">ภาควิชาเทคนิคการแพทย์ คณะสหเวชศาสตร์ มธ.</a></li>
                            <li><a target="_blank" href="http://www.mtc.or.th/">สภาเทคนิคการแพทย์</a></li>
                            <li><a target="_blank" href="https://www.nrct.go.th/home">สำนักงานการวิจัยแห่งชาติ (วช.)</a></li>
                            <li><a target="_blank" href="https://www.hsri.or.th/researcher">สถาบันวิจัยระบบสาธารณสุข</a></li>
                            <li><a target="_blank" href="https://www.nstda.or.th/th/">สำนักงานพัฒนาวิทยาศาสตร์และเทคโนโลยีแห่งชาติ (สวทช.)</a></li>
                            <li><a target="_blank" href="https://www.nrms.go.th/Home">ระบบบริหารจัดการงานวิจัยแห่งชาติ</a></li>
                        </ul>
                    </div><!-- .col -->

                    <div class="col-12 col-md-6 col-lg-3 mt-5 mt-md-0">
                        <div class="foot-latest-news">
                            <h2>Latest News</h2>
                            <ul>
                                <li>
                                    <h3><a href="{{url('')}}/#sumpan">ประชาสัมพันธ์</a></h3>
                                    <div class="posted-date">2019-08-07</div>
                                </li>

                                <li>
                                    <h3><a href="#">ประมวลภาพกิจกรรม</a></h3>
                                    <div class="posted-date">2019-08-07</div>
                                </li>

                                <li>
                                    <h3><a href="article">บทความใหม่</a></h3>
                                    <div class="posted-date">2019-08-07</div>
                                </li>
                            </ul>
                        </div><!-- .foot-latest-news -->
                    </div><!-- .col -->

                    <div class="col-12 col-md-6 col-lg-3 mt-5 mt-md-0">
                        <div class="foot-contact">
                            <h2>Contact</h2>
                            <ul>
                                <li><i class="fa fa-phone"></i><span>02-9869213 ต่อ 4325</span></li>
                                <li><i class="fa fa-envelope"></i><span>tumir2019@gmail.com</span></li>
                                <li><i class="fa fa-map-marker"></i><span>หน่วยวิจัยนวัตกรรมระดับโมเลกุล มหาวิทยาลัยธรรมศาสตร์ 
ห้อง 6001 ชั้น 6 อาคารเรียนและปฏิบัติการรวม คณะสหเวชศาสตร์
99 หมู่ที่ 18 ถนนพหลโยธิน ตำบลคลองหนึ่ง อำเภอคลองหลวง จังหวัดปทุมธานี 12120</span></li>
                            </ul>
                        </div><!-- .foot-contact -->

                        <div class="subscribe-form">
                            <form class="d-flex flex-wrap align-items-center">
                                <input type="email" placeholder="Your email">
                                <input type="submit" value="send">
                            </form><!-- .flex -->
                        </div><!-- .search-widget -->
                    </div><!-- .col -->
                </div><!-- .row -->
            </div><!-- .container -->
        </div><!-- .footer-widgets -->

        <div class="footer-bar">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <p class="m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div><!-- .col-12 -->
                </div><!-- .row -->
            </div><!-- .container -->
        </div><!-- .footer-bar -->
    </footer><!-- .site-footer -->

*/ ?>

    <script type='text/javascript' src='{{url('')}}/thecharity/js/jquery.js'></script>
    <script type='text/javascript' src='{{url('')}}/thecharity/js/jquery.collapsible.min.js'></script>
    <script type='text/javascript' src='{{url('')}}/thecharity/js/swiper.min.js'></script>
    <script type='text/javascript' src='{{url('')}}/thecharity/js/jquery.countdown.min.js'></script>
    <script type='text/javascript' src='{{url('')}}/thecharity/js/circle-progress.min.js'></script>
    <script type='text/javascript' src='{{url('')}}/thecharity/js/jquery.countTo.min.js'></script>
    <script type='text/javascript' src='{{url('')}}/thecharity/js/jquery.barfiller.js'></script>
    <script type='text/javascript' src='{{url('')}}/thecharity/js/custom.js'></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


    @yield('endscript')

<?php /*
<script>

    function ClickIntrospect()
    {
        console.log("Click on ",this.mName, this);
    }

    // Function to add Nice Menu
    function AddNiceMenu()
    {
        var niceMenu = new TR.NiceMenu("MainMenu");
        var menuFile = niceMenu.AddEntry("<a href='{{url('')}}'>หน้าแรก</a>");
        //menuFile.AddEntry("<a href='http://google.co.th'>Save</a>","Ctrl+S", ClickIntrospect);
        //menuFile.AddEntry("Save As","Shift+Ctrl+C", ClickIntrospect);



        var menuEdit = niceMenu.AddEntry("เกี่ยวกับเรา");
        menuEdit.AddEntry("<a href='{{url('')}}/flow'>โครงสร้างหน่วยงาน</a>","", ClickIntrospect);
        menuEdit.AddEntryNoSelection("<hr>");
        menuEdit.AddEntry("<a href='{{url('')}}/objective'>วัตถุประสงค์</a>","", ClickIntrospect);


        var menuOSL = niceMenu.AddEntry("ทีมวิจัย");
        menuOSL.AddEntry("<a href='{{url('')}}/#teacher'>ผู้ร่วมโครงการวิจัย</a>","", ClickIntrospect, true);
        menuOSL.AddEntry("<a href='{{url('')}}/#student'>นักวิจัย</a>","", ClickIntrospect, true);
        menuOSL.AddEntry("<a href='{{url('')}}/paper'>ผลงานวิจัยเผยแพร่</a>","", ClickIntrospect, true);
        menuOSL.AddEntry("<a href='{{url('')}}/inno'>สิทธิบัตร/นวัตกรรม/รางวัลวิจัย</a>","", ClickIntrospect, true);
        menuOSL.AddEntry("<a href='{{url('')}}/fadation'>ทุนวิจัย</a>","", ClickIntrospect, true);
        menuOSL.AddEntry("<a href='{{url('')}}/reportlist'>ส่งผลตรวจวิเคราะห์</a>","", ClickIntrospect, true);                              

        var menuOSL = niceMenu.AddEntry("Bio Plus");
        menuOSL.AddEntry("<a href='{{url('')}}/article'>บทความ</a>","", ClickIntrospect, true);
        menuOSL.AddEntry("<a href='{{url('')}}/learning'>ทดสอบความรู้</a>","", ClickIntrospect, true);
        menuOSL.AddEntry("<a href='{{url('')}}/eqa'>EQA</a>","", ClickIntrospect, true);
        menuOSL.AddEntry("<a href='{{url('')}}/social'>Webboard</a>","", ClickIntrospect, true);
        


        var menuInfo = niceMenu.AddEntry("ข่าวสาร");
        menuInfo.AddEntry("<a href='{{url('')}}/training'>การอบรม/ประชุมวิชาการ</a>","", ClickIntrospect);
        menuInfo.AddEntry("<a href='{{url('')}}/artidetail'>บทความวิชาการ</a>","", ClickIntrospect);
        menuInfo.AddEntry("<a href='{{url('')}}/#sumpan'>ประชาสัมพันธ์</a>","", ClickIntrospect);
        menuInfo.AddEntry("ร่วมงานกับเรา","", ClickIntrospect);

        var menuInfo = niceMenu.AddEntry("ติดต่อ");
        menuInfo.AddEntry("<a href='{{url('')}}/address'>ที่อยู่</a>","", ClickIntrospect);
        menuInfo.AddEntry("<a href='{{url('')}}/map'>แผนที่</a>","", ClickIntrospect);


        @if(Auth::check())
            var menuFile22 = niceMenu.AddEntry("<a href='{{url('')}}/logout'>log out</a>");
        @else
            var menuFile22 = niceMenu.AddEntry("<a href='{{url('')}}/login'>ลงทะเบียน</a>");
        @endif

    }

    AddNiceMenu();

</script>
*/
?>




</body>
</html>