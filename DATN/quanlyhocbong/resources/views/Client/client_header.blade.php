<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{$title}}</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dosis:wght@200;300;400;500;600;700;800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:ital,wght@0,200;0,300;0,400;0,600;0,700;0,900;1,200;1,300;1,400;1,600;1,700;1,900&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.6.1/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="{{asset('public/Frontend/css/style.css')}}">
    <link rel="stylesheet" href="{{asset('public/Frontend/css/reset.css')}}">
</head>

<body>
    <!--TODO: Header-->
    <section class="header">
        <div class="container">
            <div class="row header-content">
                <div class="header-left">
                    <div class="logo">
                        <img src="{{asset('public/Frontend/images/logoUTE.png')}}" alt="Logo UTE" href="{{URL::to('/trangchu')}}">
                    </div>
                    <ul class="nav-list">
                        <li class="nav-item"><a href="{{URL::to('/trangchu')}}">Trang chủ</a></li>
                        <li class="nav-item"><a href="thongbao.html">Thông báo</a>
                        </li>
                        <li class="nav-item"><a href="{{URL::to('/contact-us')}}">Liên hệ</a></li>
                        </li>
                    </ul>
                </div>
                <div class="header-right">
                    <form action="{{URL::to('/timkiem-hocbong')}}" method="POST">
                        @csrf
                        <div class="search-box d-flex">
                            <input type="text" class="search-txt form-control mr-2" name="keywords_submit" placeholder="Tìm kiếm ..">
                            <input type="submit" class="btn btn-primary btn-sm mr-4" value="Tìm kiếm" name="search_items">
                        </div>
                    </form>
                    <div class="user-action">
                        @if(Auth::check())
                        <ul class="nav pull-right top-menu list-action">
                            <li class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="username">
                                    {{Auth::user()->fullname}}
                                </span>
                            </a>
                            <ul class="dropdown-menu">
                                @can('sv')
                                <li><a href="{{URL::to('student-information')}}"><i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>Thông tin người dùng</a></li>
                                <li><a href="#"><i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>Danh sách đăng ký</a></li>
                                <li><a href="{{URL::to('/logout-client')}}"><i class="fa fa-key mr-2"></i> Đăng xuất </a></li>
                                @elsecan('ntt')
                                <li><a href="{{URL::to('sponser-information')}}"><i class="bi bi-person-circle mr-2"></i></i>Thông tin người dùng</a></li>
                                <li><a href="{{URL::to('upload-hocbong')}}"><i class="bi bi-file-arrow-up mr-2"></i>Đăng thông tin học bổng</a></li>
                                <li><a href="{{URL::to('post-history')}}"><i class="bi bi-eye mr-2"></i>Xem lịch sử đăng tin</a></li>
                                <li><a href="{{URL::to('logout-client')}}"><i class="fas fa-sign-out-alt mr-2"></i> Đăng xuất </a></li>
                                @endcan
                            </ul>
                        </ul>
                        @else
                        <a href="{{URL::to('/user/register')}}">Đăng ký</a>
                        <a href="{{URL::to('/user/login')}}">Đăng nhập</a>
                        @endif
                    </div>
                </div>
            </div>
        </div>

    </section>
    <!--TODO: end Header-->