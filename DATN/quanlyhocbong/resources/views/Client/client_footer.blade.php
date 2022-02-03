<section class="footer">
    <div class="footer-top">
        <div class="container">
            <div class="row">
                <div class="col-md-4 about-us">
                    <h3 class="about-title">Về chúng tôi</h3>
                    <p class="about-content">Website này được chúng tôi tạo ra nhằm giúp việc quản lý và tổ chức đăng kí học bổng tại trường
                        Đại học Sư phạm Kỹ Thuật Đà Nẵng trở nên dễ dàng và nhanh chóng hơn.
                    </p>
                </div>
                <div class="col-md-4 col-sm-12 about-contact">
                    <h3 class="about-title">Liên hệ</h3>
                    <ul class="list-contact">
                        <li><i class="bi bi-envelope"></i><a href="#" style="color: #333; font-size: 17px;">UTE@gmail.com</a></li>
                        <li><i class="bi bi-telephone"></i><a href="#" style="color: #333; font-size: 17px;">0965072230</a></li>
                        <li><i class="bi bi-geo-alt"></i><a href="#" style="color: #333; font-size: 17px;">48 Cao Thắng, Thành phố Đà Nẵng</a></li>
                    </ul>
                </div>
                <div class="col-md-4 col-sm-6 get-notifications">
                    <h3 class="about-title">Đăng kí nhận thông báo</h3>
                    <p>Nhập địa chỉ email của bạn để nhận thông báo mới nhất</p>
                    <div class="email-txt">
                        <input type="email" name="email" class="form-control" placeholder="Vui lòng nhập email...">
                        <button type="submit" class="send-email">
                            <img src="{{asset('public/Frontend/images/right.png')}}" alt="">
                        </button>
                    </div>
                    <!-- <div class="map">
                        <a href="https://map.coccoc.com/map/3029289531603817" target="_blank">
                            <img src="{{asset('public/Frontend/images/map.PNG')}}" alt="">
                        </a>
                    </div> -->
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <p class="text-center">Created by Anh Khoa. © 2021</p>
    </div>
</section>
<!--TODO: End Footer-->

</body>
<script src=" https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js">
</script>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="{{asset('public/Frontend/js/main.js')}}"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/30.0.0/classic/ckeditor.js"></script>
<script>
    $('#alert-box').removeClass('hide');
    $('#alert-box').delay(4000).slideUp(500);
</script>
@yield('ckeditor_content')

</html>