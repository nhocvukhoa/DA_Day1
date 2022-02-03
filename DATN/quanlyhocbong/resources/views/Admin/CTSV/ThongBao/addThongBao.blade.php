@extends('admin_layout')
@section('admin_content')
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary text-center">Thêm thông báo</h6>
    </div>
    <div class="card-body">
        <form action="{{URL::to('/insert-thongbao')}}" method="POST" enctype="multipart/form-data">
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
                <label for="thongbao_ten">Tên thông báo</label>
                <input type="text" class="form-control" name="thongbao_ten" placeholder="Nhập tên thông báo..." 
                value="{{old('thongbao_ten')}}">
                <span style="color: red;">
                    @error('thongbao_ten')
                        {{$message}}
                    @enderror
                </span>
            </div>
            <div class="form-group">
                <label for="thongbao_mota">Mô tả</label>
                <textarea style="resize: none;" rows="2" class="form-control" name="thongbao_mota" placeholder="Nhập mô tả"></textarea>
                <span style="color: red;">
                    @error('thongbao_mota')
                        {{$message}}
                    @enderror
                </span>
            </div>
            <div class="form-group">
                <label for="thongbao_noidung">Nội dung</label>
                <textarea style="resize: none;" rows="5" class="form-control" name="thongbao_noidung" id="thongbao_noidung" 
                placeholder="Nhập nội dung"></textarea>
                <span style="color: red;">
                    @error('thongbao_noidung')
                        {{$message}}
                    @enderror
                </span>
            </div>
            <div class="form-group">
                <label for="thongbao_file">File đính kèm</label>
                <input type="file" class="form-control" name="document">
            </div>
            <input type="hidden" name="thongbao_thoigiandang">
            <input type="hidden" name="user_id" value="
                <?php 
                   echo Auth::user()->id;
                ?>
            ">
           

            <input type="submit" class="btn btn-info mr-2 mt-2" value="Thêm">
            <a href="{{URL::to('list-thongbao')}}" class="btn btn-danger mt-2">Quay lại</a>
        </form>
    </div>
</div>
@endsection

@section('ckeditor_content')
<script>
    ClassicEditor
        .create(document.querySelector('#thongbao_noidung'))
        .catch(error => {
            console.error(error);
        });
</script>

@endsection