@extends('thecharity.all_page_use')

@section('content')    

<br>
        <div class="container">
            <div class="row">

            <div class="col-lg-12 ms-paper-content-container">
              <div class="ms-paper-content">
                <section class="ms-component-section">
                        @php $i=1; @endphp
                        @foreach($eqa as $st)                 
                  <div class="card">
                      <center><br>
                        <img src="{{url('')}}/pic/{{$st->eqa_pic}}" width="90%">
                      </center>
                        
                        <div class="row">
                          <div class="col-12">&nbsp;</div>
                          <div class="col-1"></div>
                          <div class="col-10">ข้อที่ {{$i}} &nbsp;&nbsp;&nbsp;&nbsp;<font color="green">ส่งคำตอบได้ถึงวันที่ :</font>  {{$st->eqa_expire}}</div>
                          <div class="col-1"></div>

                          <div class="col-1"></div>
                          <div class="col-11">{{$st->eqa_title}}{!!$st->eqa_description!!}</div>
                          <div class="col-1"></div> 

                            <div class="col-12">&nbsp;</div>
                          <div class="col-1"></div>
                          <div class="col-10"><input id="exam{{$st->eqa_id}}" class="form-control" type="text" name="lastname" value="" placeholder="Answer"></div>
                          <div class="col-1"></div>
                        </div>
                        <br>
                  </div>
                  <br>
                        @php $i++; @endphp
                        @endforeach
                </section>
              </div>
              <!-- ms-paper-content -->
            </div>



<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  บันทึกคำตอบ
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">บันทึกคำตอบ</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" align="center">
        <h3>คุณได้ทำการ บันทึกคำตอบแล้ว</h3>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">ตกลง</button>
      </div>
    </div>
  </div>
</div>



            <!-- col-lg-9 -->
          </div>
          <!-- row -->
        </div>
        <!-- ms-paper -->
      </div>


                </div><!-- .col -->
            </div><!-- .row -->
        </div><!-- .container -->
    </div><!-- .home-page-icon-boxes -->

<br>

@endsection