@extends('client_information')
@section('user_information')
<section class="login">
    <div class="container">
        <div class="row" style="justify-content:center">
            <div class="col-lg-7">
                <div class="login-content">
                    <div class="text-center login-title text-uppercase" style="margin-bottom: 30px;">Đăng thông tin học bổng</div>
                    <?php
                    $message =  session()->get('message');
                    if ($message) {
                        echo '<p class="alert alert-success" id="alert-box">' . $message . '</p>';
                        session()->put('message', null);
                    }
                    ?>
                    <form action="{{URL::to('/save-upload-hocbong')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <?php
                            $message =  session()->get('message');
                            if ($message) {
                                echo '<p class="alert alert-success mt-2" id="alert-box">' . $message . '</p>';
                                session()->put('message', null);
                            }
                            ?>
                        </div>
                        <div class="form-group">
                            <label for="hocbong_ten">Tên học bổng</label>
                            <input type="text" class="form-control" name="hocbong_ten" placeholder="Nhập tên học bổng..." value="{{old('hocbong_ten')}}">
                            <span style="color: red;">
                                @error('hocbong_ten')
                                {{$message}}
                                @enderror
                            </span>
                        </div>
                        <input type="hidden" name="loaihocbong_id" value="3">
                        <div class="form-group">
                            <label>Học kỳ</label>
                            <select name="hocky_id" class="form-control input-sm m-bot15">
                                @foreach($hocky_hocbong as $key => $hocky)
                                <option value="{{$hocky->hocky_id}}">{{$hocky->hocky_ten}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="hocbong_hinhanh">Hình ảnh</label>
                            <input type="file" class="form-control" name="hocbong_hinhanh">
                        </div>
                        <div class="form-group">
                            <label for="hocbong_noidung">Nội dung</label>
                            <textarea style="resize: none;" rows="5" class="form-control" name="hocbong_noidung" id="hocbong_noidung" placeholder="Nhập nội dung học bổng"></textarea>
                            <span style="color: red;">
                                @error('hocbong_noidung')
                                {{$message}}
                                @enderror
                            </span>
                        </div>
                        <div class="form-group">
                            <label for="hocbong_thoigianbatdau">Thời gian bắt đầu</label>
                            <input type="datetime-local" name="hocbong_thoigianbatdau">
                            <span style="color: red;">
                                @error('hocbong_thoigianbatdau')
                                {{$message}}
                                @enderror
                            </span>
                        </div>
                        <div class="form-group">
                            <label for="hocbong_thoigianketthuc">Thời gian kết thúc</label>
                            <input type="datetime-local" name="hocbong_thoigianketthuc">
                            <span style="color: red;">
                                @error('hocbong_thoigianketthuc')
                                {{$message}}
                                @enderror
                            </span>
                        </div>
                        <div class="form-group">
                            <label for="hocbong_kinhphi">Kinh phí</label>
                            <input type="text" class="form-control" name="hocbong_kinhphi" placeholder="Nhập kinh phí học bổng" value="{{old('hocbong_kinhphi')}}">
                            <span style="color: red;">
                                @error('hocbong_kinhphi')
                                {{$message}}
                                @enderror
                            </span>
                        </div>
                        <div class="form-group">
                            <label for="hocbong_tongsoluong">Tổng số suất</label>
                            <input type="text" class="form-control" name="hocbong_tongsoluong" placeholder="Nhập tổng số lượng suất" value="{{old('hocbong_tongsoluong')}}">
                            <span style="color: red;">
                                @error('hocbong_tongsoluong')
                                {{$message}}
                                @enderror
                            </span>
                        </div>
                        <input type="hidden" name="hocbong_tinhtrang" value="0">
                        <input type="hidden" name="user_id" value="{{Auth::id()}}">
                        <hr class="mt-3 mb-3">

                        <input type="submit" class="btn btn-info mr-2" value="Đăng">
                        <a href="{{URL::to('list-hocbong')}}" class="btn btn-danger">Quay lại</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<!--TODO: Footer-->
@endsection
@section('ckeditor_content')
<script>
    ClassicEditor
        .create(document.querySelector('#hocbong_noidung'))
        .catch(error => {
            console.error(error);
        });
</script>

@endsection