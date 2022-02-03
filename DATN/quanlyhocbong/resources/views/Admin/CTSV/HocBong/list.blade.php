@extends('admin_layout')
@section('admin_content')
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary text-center">Danh sách học bổng</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">

            <table class="table table-bordered" id="loaihocbong_table" width="100%" cellspacing="0">
                <div class="d-flex justify-content-end mb-3">
                    <a href="{{route('add_hocbong')}}" class="btn btn-primary text-uppercase" title="Thêm">
                        <i class="bi bi-plus-circle mr-2"></i>Thêm
                    </a>
                </div>
                <div class="form-group">
                    <?php
                    $message =  session()->get('message');
                    if ($message) {
                        echo '<p class="alert alert-success mt-2" id="alert-box">' . $message . '</p>';
                        session()->put('message', null);
                    }
                    ?>
                </div>
                <thead>
                    <tr>
                        <th>Mã HB</th>
                        <th>Tên học bổng</th>
                        <th>Loại học bổng</th>
                        <th>Học kỳ</th>
                        <th>TG bắt đầu</th>
                        <th>TG kết thúc</th>
                        <th>Tình trạng</th>
                        <th>Người duyệt</th>
                        <th>Người đăng</th>
                        <th>Ngày duyệt</th>
                        <th class="col-md-2">Hành động</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($listHocBong as $key => $hocbong)
                    <tr>
                        <td>{{$hocbong->hocbong_id }}</td>
                        <td>{{$hocbong->hocbong_ten}}</td>
                        <td>{{$hocbong->loaihocbong_ten}}</td>
                        <td>{{$hocbong->hocky_ten}}</td>
                        <td>{{$hocbong->hocbong_thoigianbatdau}}</td>
                        <td>{{$hocbong->hocbong_thoigianketthuc}}</td>
                        <td>
                            @if($hocbong->hocbong_tinhtrang == 0)
                            Chưa được duyệt
                            @else
                            Đã duyệt
                            @endif
                        </td>
                        <td>{{$hocbong->hocbong_nguoiduyet}}</td>
                        <td>{{$hocbong->fullname}}</td>
                        <td>{{$hocbong->hocbong_ngayduyet}}</td>
                        <td>
                            <a href="{{route('edit_hocbong', $hocbong->hocbong_id)}}" class="btn btn-success text-uppercase mb-1 edit" title="Sửa">
                                <i class="bi bi-pen"></i>
                            </a>
                            <a href="{{route('delete_hocbong', $hocbong->hocbong_id)}}" class="btn btn-danger text-uppercase delete mb-1" title="Xóa" onclick="return confirm('Bạn có muốn xóa học bổng này không?')"">
                                <i class=" bi bi-x-octagon"></i>
                            </a>
                            <a href="{{route('detail_hocbong', $hocbong->hocbong_id)}}" class="btn btn-info text-uppercase mb-1 detail" title="Xem chi tiết">
                                <i class="bi bi-eye"></i>
                            </a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
            <div class="row mt-4">
                <div class="col-sm-12 text-right text-center-xs">
                    <div class="pagination d-flex justify-content-center mr-4"> {{$listHocBong->links('paginationlinks')}}</div>
                </div>
            </div>
        </div>


    </div>
</div>




@endsection