@include('Client.client_header')

<section class="post-history">
    <div class="row">
        <div class="container">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-center">Lịch sử đăng bài</h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="loaihocbong_table" width="100%" cellspacing="0">
                            <div class="d-flex justify-content-end mb-3">
                            </div>
                            <thead>

                                <tr>
                                    <th>STT</th>
                                    <th class="text-center col-md-2">Tên bài đăng</th>
                                    <th>Người đăng</th>
                                    <th>Nội dung</th>
                                    <th>Thời gian bắt đầu</th>
                                    <th>Thời gian kết thúc</th>
                                    <th class="text-center">Tình trạng</th>
                                    <th class="col-md-2">Hành động</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($list_post as $key => $post)
                                <tr>
                                    <td>{{ ($key +1 ) }}</td>
                                    <td>{{ $post->hocbong_ten }}</td>
                                    <td>{{ $post->fullname}}</td>
                                    <td>{!! $post->hocbong_noidung !!}</td>
                                    <td>{{date('d-m-Y H:i:s', strtotime($post->hocbong_thoigianbatdau))}}</td>
                                    <td>{{date('d-m-Y H:i:s', strtotime($post->hocbong_thoigianketthuc))}}</td>
                                    <td class="text-center">
                                        @if($post->hocbong_tinhtrang == 0)
                                            <i class="bi bi-x-lg text-danger" style="font-size: 22px;"></i>
                                        @else
                                            <i class="bi bi-check-lg text-success" style="font-size: 25px;"></i>
                                        @endif
                                    </td>
                                    <td>
                                        @if($post->hocbong_tinhtrang == 1)
                                        <a href="{{URL::to('/chitiet-hocbong/'.$post->hocbong_id)}}" 
                                        class="btn btn-primary text-uppercase" title="Xem chi tiết">
                                            <i class="bi bi-eye"></i>
                                        </a>
                                        @else
                                        <a href="#" 
                                        class="btn btn-primary text-uppercase" title="Xem chi tiết">
                                            <i class="bi bi-eye"></i>
                                        </a>
                                        @endif
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@include('Client.client_footer')