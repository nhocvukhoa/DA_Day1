@include('Client.client_header')
@include('Client.client_slider')

<section class="scholarship">
    <div class="container">
        <div class="row">
            <div class="col-md-3 scholarship-right">
                <div class="category-content">
                    <h1 class="text-center">Danh mục học bổng</h1>
                    <ul class="category-list">
                        @foreach($loaihocbong as $item)
                        <li class="category-item active">
                            <a href="{{URL::to('danhmuc-hocbong/'.$item->loaihocbong_id)}}">
                                <h2 class="category-title">{{$item->loaihocbong_ten}}</h2>
                            </a>
                        </li>
                        @endforeach
                    </ul>
                </div>
            </div>
            <div class="col-md-9 scholarship-left">
                @yield('welcome_content')
            </div>
        </div>

    </div>
</section>

@include('Client.client_count')

@include('Client.client_footer')
