@extends('thecharity.all_page_use')

@section('content')
<style>
body{
    background-image: url("{{url('')}}/logo/BG.jpg");
}

</style>
    <div class="contact-page-wrap">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-5 ">
                    <br>

                <div class="col-12 col-lg-7">
                    <br>





                                    </span>

                            </div>
                        </div>
                        <div class="form-group row">

                            <div class="col-md-12 offset-md-12">
                                <div class="form-check">
                                {{--
                                    <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

                                    <label class="form-check-label" for="remember">
                                        {{ __('Remember Me') }}
                                    </label>
                                    --}}
                                </div>
                            </div>
                        </div>


                        <div class="form-group row mb-0 ">
                            <div class="col-md-8 offset-md-4">

                        </div>


                                        </form>

</div>

                </div><!-- .col -->
            </div><!-- .row -->
        </div><!-- .container -->
  <center>
        <div class="col-md-5" >
      <div class="card" style="opacity: 0.9; filter: alpha(opacity=100); border-radius: 25px ;padding-bottom: 2%;">
          <div class="card-body">


        <div class="col-12">
                <a class="d-block" href="{{url('')}}" rel="home"><img style="width: 80%; border-radius: 25px 25px 0px 0px;" class="d-block" src="{{url('')}}/logo/logo01.jpg" alt="logo"></a>
            </div><br>
    <div class="col-md-12">
    <div class="card" style="border-radius: 25px ;">
        <div class="card-header">
            <h3>Login</h3>
        </div>
        <div class="card-body" >
            <form method="POST" action="{{ route('login') }}">
                @csrf
                                        <div class="form-group row">
    <label for="email" class="col-sm-12 col-form-label" style="text-align:left;">{{ __('E-Mail Address') }}</label>

    <div class="col-md-12">
        <input id="email" type="text"  class="form-control{{-- $errors->has('email') ? ' is-invalid' : '' --}}" name="email" value="{{ old('email') }}" required autofocus>

        @if ($errors->has('email'))
            <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('email') }}</strong>
                @endif
            </div>
        </div>

        <div class="form-group row">
            <label for="password" class="col-md-12 col-form-label" style="text-align:left;">{{ __('Password') }}</label>

            <div class="col-md-12">
                <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>

                @if ($errors->has('password'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('password') }}</strong>
                    </span>
                @endif
                <br><a class="btn btn-link" href="register" style="text-decoration: none;">
                    {{ __('ลงทะเบียน') }}
                    </a>
                <button type="submit" class="btn btn-primary">
                    {{ __('เข้าสู่ระบบ') }}
                </button>



        </div>


        </div>
    </div>
</div>
</div>
</div>
</div>
</center>
@endsection
