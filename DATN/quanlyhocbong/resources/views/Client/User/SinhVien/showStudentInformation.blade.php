@extends('client_information')
@section('user_information')
<section class="login">
    <div class="container">
        <div class="row" style="justify-content:center">
            <div class="col-lg-6">
                <div class="login-content">
                    <div class="text-center login-title text-uppercase">Thông tin sinh viên</div>
                    <?php
                    $message =  session()->get('message');
                    if ($message) {
                        echo '<p class="alert alert-danger" id="alert-box">' . $message . '</p>';
                        session()->put('message', null);
                    }
                    ?>
                    <form action="{{route('update_student')}}" method="POST">
                        @csrf
                        <div class="form-group row d-flex align-items-center">
                            <label class="col-sm-3" style="margin-bottom: 0!important;">Mã sinh viên :</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="name" value="{{$student->name}}" disabled>
                            </div>
                        </div>
                        <div class="form-group row d-flex align-items-center">
                            <label class="col-sm-3" style="margin-bottom: 0!important;">Khoa :</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="khoa_id" value="{{$student->khoa_ten}}" disabled>
                            </div>
                        </div>
                        <div class="form-group row d-flex align-items-center">
                            <label class="col-sm-3" style="margin-bottom: 0!important;">Ngành :</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="nganh_id" value="{{$student->nganh_ten}}" disabled>
                            </div>
                        </div>
                        <div class="form-group row d-flex align-items-center">
                            <label class="col-sm-3" style="margin-bottom: 0!important;">Lớp :</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="lop_id" value="{{$student->lop_ten}}" disabled>
                            </div>
                        </div>
                        <div class="form-group row d-flex align-items-center">
                            <label class="col-sm-3" style="margin-bottom: 0!important;">Họ và tên :</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="fullname" value="{{$student->fullname}}" disabled>
                            </div>
                        </div>
                        <div class="form-group row d-flex align-items-center">
                            <label class="col-sm-3" style="margin-bottom: 0!important;">Năm sinh :</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="namsinh" 
                                value="{{date('d-m-Y', strtotime($student->namsinh));}}" disabled>
                            </div>
                        </div>
                        <div class="form-group row d-flex align-items-center">
                            <label class="col-sm-3" style="margin-bottom: 0!important;">Giới tính :</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="diachi" value="{{$student->gioitinh}}" disabled>
                            </div>
                        </div>
                        <div class="form-group row d-flex align-items-center">
                            <label class="col-sm-3" style="margin-bottom: 0!important;">Địa chỉ :</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="diachi" value="{{$student->diachi}}">
                            </div>
                        </div>
                        <div class="form-group row d-flex align-items-center">
                            <label class="col-sm-3" style="margin-bottom: 0!important;">Số điện thoại :</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="sdt" value="{{$student->sdt}}">
                            </div>
                        </div>
                        <div class="form-group row d-flex align-items-center">
                            <label class="col-sm-3" style="margin-bottom: 0!important;">Email :</label>
                            <div class="col-sm-9">
                                <input type="email" class="form-control" name="email" value="{{$student->email}}">
                            </div>
                        </div>
                       
                        <input type="submit" class="btn btn-primary btn-block btn-login-user" value="Đăng nhập">
                        <div class="not-member text-center">
                            <span>Nếu bạn chưa là thành viên hãy <a href="dangky.html">Đăng kí</a></span>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<!--TODO: Footer-->
@endsection