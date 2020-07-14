@extends('thecharity.all_page_use')

@section('content')
    <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h1>Contact</h1>
                </div><!-- .col -->
            </div><!-- .row -->
        </div><!-- .container -->
    </div><!-- .page-header -->

    <div class="contact-page-wrap">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-5">
                    <div class="entry-content">
                        <h2>ที่อยู่</h2>

                        <img src="{{url('')}}/pic_index/tower.jpg" width="400">

                        <p>
                            
<br>หน่วยวิจัยนวัตกรรมระดับโมเลกุล มหาวิทยาลัยธรรมศาสตร์
<br>ห้อง 6001 ชั้น 6 อาคารเรียนและปฏิบัติการรวม คณะสหเวชศาสตร์
<br>99 หมู่ที่ 18 ถนนพหลโยธิน ตำบลคลองหนึ่ง อำเภอคลองหลวง จังหวัดปทุมธานี 12120


                        </p>


                        <ul class="contact-info p-0">
                            <li><i class="fa fa-phone"></i><span>02-986-9213 ต่อ 4325</span></li>
                            <li><i class="fa fa-envelope"></i><span>tumir2019@gmail.com</span></li>
                            
                        </ul>
                    </div>
                </div><!-- .col -->

                <div class="col-12 col-lg-7">
                    <form class="contact-form">
                        <input type="text" placeholder="Name">
                        <input type="email" placeholder="Email">
                        <textarea rows="15" cols="6" placeholder="Messages"></textarea>

                        <span>
                            <input class="btn gradient-bg" type="submit" value="Contact us">
                        </span>
                    </form><!-- .contact-form -->

                </div><!-- .col -->

                <div class="col-12">&nbsp;</div>


            </div><!-- .row -->
        </div><!-- .container -->
    </div>
@endsection