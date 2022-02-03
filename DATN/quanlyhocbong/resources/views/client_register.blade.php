@include('Client.client_header')
<section class="register">
    <div class="container">
        <div class="row" style="justify-content:center">
            <div class="col-lg-6">
                <div class="register-content">
                    <div class="text-center register-title">ĐĂNG KÝ</div>
                    <?php
                    $message =  session()->get('message');
                    if ($message) {
                        echo '<p class="alert alert-danger" id="alert-box">' . $message . '</p>';
                        session()->put('message', null);
                    }
                    ?>
                    <form action="{{route('register_login')}}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="name">Tên đăng nhập:</label>
                            <input type="text" class="form-control mb-1" name="name" placeholder="Tên đăng nhập..." value="{{old('name')}}">
                            <span style="color: red;">
                                @error('name')
                                    {{$message}}
                                @enderror
                            </span>
                        </div>
                        <div class="form-group">
                            <label for="password">Mật khẩu:</label>
                            <input type="password" class="form-control mb-1" name="password" placeholder="Mật khẩu..." value="{{old('password')}}">
                            <span style="color: red;">
                                @error('password')
                                    {{$message}}
                                @enderror
                            </span>
                        </div>
                        <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="email" class="form-control mb-1" name="email" placeholder="Email..." value="{{old('email')}}">
                            <span style="color: red;">
                                @error('email')
                                    {{$message}}
                                @enderror
                            </span>
                        </div>
                        <input type="hidden" name="quyen" value="3">
                        <div class="form-group">
                            <label for="fullname">Tên nhà tài trợ:</label>
                            <input type="fullname" class="form-control mb-1" name="fullname" placeholder="Tên nhà tài trợ..." value="{{old('fullname')}}">
                            <span style="color: red;">
                                @error('fullname')
                                    {{$message}}
                                @enderror
                            </span>
                        </div>
                        <div class="form-group">
                            <label for="diachi">Địa chỉ:</label>
                            <input type="text" class="form-control mb-1" name="diachi" placeholder="Địa chỉ..." value="{{old('diachi')}}">
                            <span style="color: red;">
                                @error('diachi')
                                    {{$message}}
                                @enderror
                            </span>
                        </div>
                        <div class="form-group">
                            <label for="sdt">Số điện thoại:</label>
                            <input type="text" class="form-control mb-1" name="sdt" placeholder="Số điện thoại..." value="{{old('sdt')}}">
                            <span style="color: red;">
                                @error('sdt')
                                    {{$message}}
                                @enderror
                            </span>
                        </div>
                        <input type="hidden" name="tinhtrang" value="0">
                        <input type="submit" class="btn btn-primary btn-block btn-register-user mt-4" value="Đăng ký">
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
@include('Client.client_footer')