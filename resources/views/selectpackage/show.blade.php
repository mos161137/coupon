@extends('layouts.template')

{{-- Request::segment(2) --}}
@section('content')

<div class="row">
    <div class="col-6">
        <div class="card">
            <div class="card-body">
            {{Form::open(['url'=>'selectpackage'])}}
                <div class="row">

                    <div class="col-12">

                            {{class_basename(Route::current()->controller)}}<br>
                            {{class_basename(Route::currentRouteAction())}}<br>
                            {{class_basename(Route::currentRouteName())}}<br>
                            {{$view_name}}<br>
                            {{Auth::user()->user_type}}<br>


                        <input type="hidden" name="package_id" value="{{Request::segment(2)}}">

                        <label class="control-label">
                            เลขประจำตัวประชาชน
                        </label>
                        <input class="form-control" id="citizenid" name="citizenid" placeholder="13 หลัก" type="text"/>
                    </div>
                    <div class="col-12">
                        <label class="control-label">
                            คำนำหน้าชื่อ
                        </label>
                        <select class="form-control" name="prefixname">
                            <option value="">
                                เลือก
                            </option>
                            <option value="นาย">
                                นาย
                            </option>
                            <option value="นางสาว">
                                นางสาว
                            </option>
                            <option value="นาง">
                                นาง
                            </option>
                        </select>
                    </div>
                    <div class="col-12">
                        <label class="control-label">
                            ศาสนา
                        </label>
                        <select class="form-control" name="religion">
                            <option value="พุทธ">
                                พุทธ
                            </option>
                            <option value="คริสต์">
                                คริสต์
                            </option>
                            <option value="อิสลาม">
                                อิสลาม
                            </option>
                            <option value="ไม่ระบุ">
                                ไม่ระบุ
                            </option>
                        </select>
                    </div>
                    <div class="col-12">
                        <label class="control-label">
                            วันที่
                        </label>
                        <select class="form-control" name="birthdate">
                            <option value="01">
                                01
                            </option>
                            <option value="02">
                                02
                            </option>
                        </select>
                    </div>
                    <div class="col-12">
                        <label class="control-label">
                            เดือน
                        </label>
                        <select class="form-control" name="birthmonth">
                            <option value="มกราคม">
                                มกราคม
                            </option>
                            <option value="กุมภาพันธ์">
                                กุมภาพันธ์
                            </option>
                            <option value="มีนาคม">
                                มีนาคม
                            </option>
                        </select>
                    </div>
                    <div class="col-12">
                        <label class="control-label">
                            ปี (พ.ศ.)
                        </label>
                        <select class="form-control" name="birthyear">
                            <option value="2562">
                                2562
                            </option>
                            <option value="2561">
                                2561
                            </option>
                            <option value="2560">
                                2560
                            </option>
                        </select>
                    </div>
                    <div class="col-12">
                        <label class="control-label">
                            ชื่อ
                        </label>
                        <input class="form-control" id="firstname" name="firstname" placeholder="ชื่อ" type="text"/>
                    </div>
                    <div class="col-12">
                        <label class="control-label">
                            นามสกุล
                        </label>
                        <input class="form-control" id="lastname" name="lastname" placeholder="นามสกุล" type="text"/>
                    </div>
                    <div class="col-12">
                        <label class="control-label">
                            ที่อยู่
                        </label>
                        <textarea class="form-control" name="address" placeholder="ที่อยู่" rows="5">
                        </textarea>
                    </div>

                    <div class="col-12">
                        <button class="btn btn-primary" name="" type="submit">
                            Submit
                        </button>
                    </div>

                </div>
                </form>
            --</div>
        </div>
    </div>
    <div class="col-6">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-12">
                        Package : {{$package->package_name}}
                    </div>
                    @php
                        $items = json_decode($package->item_textall);
                    @endphp
                    @foreach($items as $item => $it)
                    <div class="col-2">
                        {{$item}}
                    </div>
                    <div class="col-10">
                        {{$it}}
                    </div>
                    @endforeach
                    <div class="col-12">
                        ราคา : {{$package->total_amount}}
                    </div>
                </div>
            </div>
        </div>
   </div>
</div>
@endsection
