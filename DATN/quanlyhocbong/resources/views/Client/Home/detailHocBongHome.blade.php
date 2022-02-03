@extends('client_detailHocBong')
@section('hocbong_chitiet')
<section class="scholarship-detail">
    <div class="container">
        <div class="row">
            <div class="col-md-9 d-flex flex-column">
                @foreach($detail_hocbong as $detail)
                <form action="" method="POST">
                    @csrf
                    <div class="scholarship-detail-content">
                        <div class="scholarship-detail-wrapper">
                        <div class="form-group">
                             <input type="hidden" name="hocbong_id" value="{{$detail->hocbong_id}}">
                        </div>
                            <img src="{{URL::to('/public/Upload/HocBong/'.$detail->hocbong_hinhanh)}}" style="width: 100%;"></img>
                            <h1 class="scholarship-title"><i class="fas fa-graduation-cap"></i>{{$detail->hocbong_ten}}</h1>
                            <div class="scholarship-content"> {!! $detail->hocbong_noidung !!}  </div>
                            <div class="footer-detail d-flex flex-column">
                                <div class="footer-detail-item d-flex">
                                    <p><i class="bi bi-clock"></i>Thời gian bắt đầu: {{date('d-m-Y', strtotime($detail->hocbong_thoigianbatdau));}}</p>
                                    <p><i class="bi bi-clock"></i>Thời gian kết thúc: {{date('d-m-Y', strtotime($detail->hocbong_thoigianketthuc));}}</p>
                                    <p><i class="bi bi-clock"></i>Số lượng đã đăng ký: {{$detail->hocbong_soluongdadangky}}</p>
                                </div>
                                <div class="footer-detail-item d-flex">
                                    <p><i class="bi bi-clock"></i>Người đăng: {{$detail->fullname}}</p>
                                    <p><i class="bi bi-clock"></i>Thời gian đăng: {{date('d-m-Y H:i:s', strtotime($detail->hocbong_ngayduyet))}}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                
                <div class="registration-form">
                    <form action="{{URL::to('/dangky-hocbong')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <h1 class="form-title">HỒ SƠ ĐĂNG KÍ</h1>
                        <div class="alert alert-danger">
                           <p class="mb-2">LƯU Ý</p>
                           <ol class="p-1 ml-2" style="list-style: block !important; font-size: 18px;">
                                <li class="mb-2">Sinh viên chọn hình ảnh minh chứng cho từng tiêu chí của học bổng</li>
                                <li>Sinh viên phải kiểm tra hồ sơ vì chỉ đăng ký được một lần duy nhất</li>
                           </ol>
                        </div>
                        <div class="form-group">
                             <input type="hidden" name="hocbong_id" value="{{$detail->hocbong_id}}">
                        </div>
                       @foreach($detail->tieuchi as $key => $tieuchi)
                        <input type="hidden" name="tieuchi_id[]" value="{{$tieuchi->tieuchi_id}}">
                        <div class="form-group mt-3">
                            <label for="">{{$tieuchi->tieuchi_ten}}</label>
                            <input name="image[]" type="file" class="form-control">
                        </div>
                        @endforeach
                      
                        @if(Auth::check())
                            @if(Auth::user()->quyen==2)
                                @if($detail->hocbong_thoigianketthuc < now())
                                    <button type="submit"  class="btn btn-danger text-center text-uppercase" style="margin-top: 20px;" 
                                    disabled>Đã hết hạn</button>
                                @else
                                    <button type="submit" name="image[]"  class="btn btn-danger text-center text-uppercase" 
                                    style="margin-top: 20px;">Đăng ký</button>
                                @endif
                            @else
                                @if($detail->hocbong_thoigianketthuc < now())
                                    <button  class="btn btn-danger text-center text-uppercase" style="margin-top: 20px;" 
                                    disabled>Đã hết hạn</button>
                                @else
                                    <button  class="btn btn-danger text-center text-uppercase" style="margin-top: 20px;" 
                                    disabled>Đăng ký</button>
                                @endif
                            @endif
                        @else
                            @if($detail->hocbong_thoigianketthuc < now())
                                <a href="{{URL::to('/user/login')}}">
                                    <button  class="btn btn-danger text-center text-uppercase" style="margin-top: 20px;"  
                                    disabled>Đã hết hạn</button>
                                </a>
                            @else
                                <a href="{{URL::to('/user/login')}}">
                                    <button  class="btn btn-danger text-center text-uppercase" style="margin-top: 20px;">Đăng ký</button>
                                </a>
                            @endif
                        @endif
                        
                    </form>
                </div>
                @endforeach
              
            </div>

            <div class="col-md-3 d-flex flex-column">
                <div class="relate-scholarship">
                    <h1 class="relate-title"><i class="fas fa-graduation-cap"></i>Các học bổng liên quan</h1>
                    <div class="relate-scholarship-list d-flex flex-column">
                        @foreach($relate_hocbong as $relate)
                        <a href="{{URL::to('/chitiet-hocbong/'.$relate->hocbong_id)}}">
                            <div class="relate-scholarship-item" style="border-bottom: 1px solid red;">
                                <img src="{{URL::to('/public/Upload/HocBong/'.$relate->hocbong_hinhanh)}}" class="relate-img">
                                <h1 class="relate-name">{{$relate->hocbong_ten}}</h1>
                            </div>
                        </a>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
