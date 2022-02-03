@extends('welcome')
@section('welcome_content')

<p class="label-scholarship">Danh sách học bổng</p>
<div class="line"></div>
<div class="scholarship-list">
    @foreach($listhocbong as $hocbong)
    <div class="col-lg-4 col-sm-6 mb-4 grid-tem">
        <a href="{{URL::to('/chitiet-hocbong/'.$hocbong->hocbong_id)}}">
            <div class="card shadow h-100">
                <img class="card-img-top" src="{{URL::to('public/Upload/HocBong/'.$hocbong->hocbong_hinhanh)}}"></img>
                <div class="card-content h-100">
                    <p class="scholarship-name">{{$hocbong->hocbong_ten}}</p>
                </div>
                <div class="card-footer text-center">
                    <button class="btn btn-primary"><i class="bi bi-clipboard-minus"></i>Xem chi tiết</button>
                </div>
            </div>
        </a>
    </div>
    @endforeach
</div>

<div class="row mt-4">
    <div class="col-sm-12 text-right text-center-xs">
        <div class="pagination d-flex justify-content-center mr-4"> {{$listhocbong->links('paginationlinks')}}</div>
    </div>
</div>

@endsection