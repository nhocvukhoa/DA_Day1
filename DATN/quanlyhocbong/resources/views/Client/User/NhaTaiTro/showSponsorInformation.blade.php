@extends('client_information')
@section('user_information')
<section class="login">
    <div class="container">
        <div class="row" style="justify-content:center">
            <div class="col-lg-7">
                <div class="login-content">
                    <div class="text-center login-title text-uppercase" style="margin-bottom: 30px;">Thông tin nhà tài trợ</div>
                    <?php
                    $message =  session()->get('message');
                    if ($message) {
                        echo '<p class="alert alert-success" id="alert-box">' . $message . '</p>';
                        session()->put('message', null);
                    }
                    ?>
                    <form action="{{route('update_sponsor')}}" method="POST">
                        @csrf
                       
                        <div class="form-group row d-flex align-items-center">
                            <label class="col-sm-4" style="margin-bottom: 0!important;">Tên nhà tài trợ :</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="fullname" value="{{$sponsor->fullname}}" disabled>
                            </div>
                        </div>
                        <div class="form-group row d-flex align-items-center">
                            <label class="col-sm-4" style="margin-bottom: 0!important;">Địa chỉ :</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="diachi" value="{{$sponsor->diachi}}">
                            </div>
                        </div>
                        <div class="form-group row d-flex align-items-center">
                            <label class="col-sm-4" style="margin-bottom: 0!important;">Số điện thoại :</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="sdt" value="{{$sponsor->sdt}}">
                            </div>
                        </div>
                        <div class="form-group row d-flex align-items-center">
                            <label class="col-sm-4" style="margin-bottom: 0!important;">Email :</label>
                            <div class="col-sm-8">
                                <input type="email" class="form-control" name="email" value="{{$sponsor->email}}">
                            </div>
                        </div>
                       

                        <input type="submit" class="btn btn-primary btn-block btn-login-user" style="margin-top: 30px;" value="Cập nhật">
                        
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<!--TODO: Footer-->
@endsection