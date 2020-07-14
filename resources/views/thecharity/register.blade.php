@extends('thecharity.all_page_use')

@section('content')
    <div class="contact-page-wrap">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-5">
                    <br>
                        <h3>กรุณาเข้าสู่ระบบ</h3>

                        <p>หากท่านไม่ได้เป็นสมาซิกกรุณาลงทะเบียน 
                            <br>หากเข้าสู่ระบบ หรือลงทะเบียนไม่ได้ ติดต่อ </p>


                        <div class="entry-content">
                        <ul class="contact-info p-0">
                            <li><i class="fa fa-phone"></i><span>02-986-9213 ต่อ 4325</span></li>
                            <li><i class="fa fa-envelope"></i><span>tumir2019@gmail.com</span></li>
                            <li><i class="fa fa-map-marker"></i><span>อาคารเรียนและปฏิบัติการรวม ซั้น 6 คณะสหเวซศาสตร์ มหาลัยวิทยาลัยธรรมศาสตร์ ศูนย์รังสิต จ.ปทุมธานี 12120</span></li>
                        </ul>
                    </div>
                </div><!-- .col -->

                <div class="col-12 col-lg-7">
                    <br>
                    <h3>Registration</h3>

<div style="
  border-radius: 25px;
  border: 2px solid #cceeff;
  padding: 20px; 

">


                    <form method="POST" role="form" class="form-horizontal" action="{{ URL('Register') }}"> 
                    @csrf
                                        
                                        
                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('คำนำหน้าชื่อ') }}</label>
                            <div class="col-md-8"><input type="text" name='prefixname' class="form-control" placeholder="คำนำหน้าชื่อ"></div><br><br>
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('ชื่อ') }}</label>                            
                            <div class="col-md-8"><input type="text" name='firstname' class="form-control" placeholder="ชื่อ"></div><br><br>
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('นามสกุล') }}</label>                            
                            <div class="col-md-8"><input type="text" name='lastname' class="form-control" placeholder="นามสกุล"></div><br><br>
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('ตำแหน่ง') }}</label>                            
                            <div class="col-md-8"><input type="text" name='position' class="form-control" placeholder="ตำแหน่ง"></div><br><br>
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('ชื่อหน่วยงาน') }}</label>                            
                            <div class="col-md-8"><input type="text" name='department_sub' class="form-control" placeholder="ชื่อหน่วยงาน"></div><br><br>
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('หน่วยงาน') }}</label>                            
                            <div class="col-md-8"><input type="text" name='department_main' class="form-control" placeholder="หน่วยงานต้นสังกัดกรม/กระทรวง/หน่วยงานเอกชน"></div><br><br>
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('โทรศัพท์ที่ทำงาน') }}</label>                            
                            <div class="col-md-8"><input type="text" name='department_tel' class="form-control" placeholder="หมายเลขโทรศัพท์ที่ทำงาน"></div><br><br>
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('โทรศัพท์มือถือ') }}</label>                            
                            <div class="col-md-8"><input type="text" name='mobile' class="form-control" placeholder="หมายเลขโทรศัพท์มือถือ"></div> <br><br>
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Line') }}</label>                            
                            <div class="col-md-8"><input type="text" name='line' class="form-control" placeholder="Line"></div><br><br>
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Email') }}</label>                            
                            <div class="col-md-8"><input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required></div>   <br><br> 

                            
                            <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>
                            <div class="col-md-8">
                                <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>
                                @if ($errors->has('password'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div><br><br>
                        

                        
                            <label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Confirm Password') }}</label>
                            <div class="col-md-8">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
                            </div>
                        

                            <div class="col-12">&nbsp;</div>
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('ที่อยู่ที่สามารถติดต่อได้ทางไปรษณีย์ (โปรดระบุให้ชัดเจน)') }}</label>
                            <div class="col-md-8"><textarea name='department_address' rows="4" class="form-control" ></textarea></div>
                            <div class="col-12">&nbsp;</div>
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('ประสบการณ์ทำงานด้านจุลชีววิทยา') }}</label>
                            <div class="col-md-8"><textarea name='experience' rows="4" cols="50" class="form-control" ></textarea></div>
                            <div class="col-12">&nbsp;</div>
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('ลักษณะงานที่ปฎิบัติ') }}</label>
                            <div class="col-md-8"><textarea name='job_format' rows="4" cols="50" class="form-control" ></textarea></div>
                            <div class="col-12">&nbsp;</div>

                            
                            <div class="col-12" align="right">
                                <button class="btn btn-block btn-gradient waves-effect waves-light" type="submit">
                                {{ __('Register') }}
                                </button>
                            </div>
                           

                                        </form>


</div>
                         
                </div><!-- .col -->
            </div><!-- .row -->
        </div><!-- .container -->
    </div>
    <br>
@endsection