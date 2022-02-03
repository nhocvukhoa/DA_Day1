<?php

use Illuminate\Support\Facades\Route;
use \App\Http\Controllers\HomeController;
use \App\Http\Controllers\AdminController;
use \App\Http\Controllers\LoaiHocBongController;
use \App\Http\Controllers\HocBongController;
use \App\Http\Controllers\UserController;
use \App\Http\Controllers\KhoaController;
use \App\Http\Controllers\NganhController;
use \App\Http\Controllers\LopController;
use \App\Http\Controllers\TieuChiController;
use \App\Http\Controllers\ContactController;
use \App\Http\Controllers\ThongBaoController;
use \App\Http\Controllers\AuthController;
use Illuminate\Support\Facades\Auth;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

//TODO: 1. Khách vãng lai
Route::get('/', [HomeController::class, 'index']);
Route::get('/trangchu', [HomeController::class, 'index'])->name('home');
Route::post('/timkiem-hocbong', [HomeController::class, 'searchHocBong']);
Route::get('/chitiet-hocbong/{hocbong_id}', [HomeController::class, 'detailHocBongHome'])->name('detail.home');
Route::get('/danhmuc-hocbong/{loaihocbong_id}', [LoaiHocBongController::class, 'showHocBongByType']);

Route::get('/admin', [AdminController::class, 'index'])->name('show_form_login');
Route::post('/login', [AdminController::class, 'login'])->name('admin_login');
Route::get('/logout', [AdminController::class, 'logout'])->name('admin_logout');

//TODO: 2. Admin
Route::middleware('admin')->prefix('admin')->group(function () {

    Route::get('/dashboard', [AdminController::class, 'showDashboard'])->name('dashboard');

    //TODO: 2.1. CTSV
    Route::prefix('ctsv')->group(function () {
        Route::prefix('loaihocbong')->group(function () {
            Route::get('/list', [LoaiHocBongController::class, 'list'])->name('show_loaihocbong');
            Route::get('/add', [LoaiHocBongController::class, 'add'])->name('add_loaihocbong');
            Route::post('/insert', [LoaiHocBongController::class, 'insert'])->name('insert_loaihocbong');
            Route::get('/edit/{loaihocbong_id}', [LoaiHocBongController::class, 'edit'])->name('edit_loaihocbong');
            Route::post('/update/{loaihocbong_id}', [LoaiHocBongController::class, 'update'])->name('update_loaihocbong');
            Route::get('/delete/{loaihocbong_id}', [LoaiHocBongController::class, 'delete'])->name('delete_loaihocbong');
        });

        Route::prefix('hocbong')->group(function () {
            Route::get('/list', [HocBongController::class, 'list'])->name('show_hocbong');
            Route::get('/add', [HocBongController::class, 'add'])->name('add_hocbong');
            Route::post('/insert', [HocBongController::class, 'insert'])->name('insert_hocbong');
            Route::get('/edit/{hocbong_id}', [HocBongController::class, 'edit'])->name('edit_hocbong');
            Route::post('/update/{hocbong_id}', [HocBongController::class, 'update'])->name('update_hocbong');
            Route::get('/detail/{hocbong_id}', [HocBongController::class, 'detail'])->name('detail_hocbong');
            Route::get('/delete/{hocbong_id}', [HocBongController::class, 'delete'])->name('delete_hocbong');
        });

        Route::prefix('khoa')->group(function () {
            Route::get('/list', [KhoaController::class, 'list'])->name('show_khoa');
            Route::get('/add', [KhoaController::class, 'add'])->name('add_khoa');
            Route::post('/insert', [KhoaController::class, 'insert'])->name('insert_khoa');
            Route::get('/edit/{khoa_id}', [KhoaController::class, 'edit'])->name('edit_khoa');
            Route::post('/update/{khoa_id}', [KhoaController::class, 'update'])->name('update_khoa');
            Route::get('/delete/{khoa_id}', [KhoaController::class, 'delete'])->name('delete_khoa');
        });

        Route::prefix('nganh')->group(function () {
            Route::get('/list', [NganhController::class, 'list'])->name('show_nganh');
            Route::get('/add', [NganhController::class, 'add'])->name('add_nganh');
            Route::post('/insert', [NganhController::class, 'insert'])->name('insert_nganh');
            Route::get('/edit/{nganh_id}', [NganhController::class, 'edit'])->name('edit_nganh');
            Route::post('/update/{nganh_id}', [NganhController::class, 'update'])->name('update_nganh');
            Route::get('/delete/{nganh_id}', [NganhController::class, 'delete'])->name('delete_nganh');
        });

        Route::prefix('lop')->group(function () {
            Route::get('/list', [LopController::class, 'list'])->name('show_lop');
            Route::get('/add', [LopController::class, 'add'])->name('add_lop');
            Route::post('/insert', [LopController::class, 'insert'])->name('insert_lop');
            Route::get('/edit/{lop_id}', [LopController::class, 'edit'])->name('edit_lop');
            Route::post('/update/{lop_id}', [LopController::class, 'update'])->name('update_lop');
            Route::get('/delete/{lop_id}', [LopController::class, 'delete'])->name('delete_lop');
        });

        Route::prefix('tieuchi')->group(function () {
            Route::get('/list', [TieuChiController::class, 'list'])->name('show_tieuchi');
            Route::get('/add', [TieuChiController::class, 'add'])->name('add_tieuchi');
            Route::post('/insert', [TieuChiController::class, 'insert'])->name('insert_tieuchi');
            Route::get('/edit/{tieuchi_id}', [TieuChiController::class, 'edit'])->name('edit_tieuchi');
            Route::post('/update/{tieuchi_id}', [TieuChiController::class, 'update'])->name('update_tieuchi');
            Route::get('/delete/{tieuchi_id}', [TieuChiController::class, 'delete'])->name('delete_tieuchi');
        });

        Route::prefix('duyettk')->group(function () {
            Route::get('/list-accept-account', [UserController::class, 'listAcceptAccount'])->name('list_account');
            Route::get('/active-user/{id}', [UserController::class, 'activeUser'])->name('active_user');;
        });

    });




    //HocBong thêm vào sau
    Route::get('/list-accept-hocbong', [HocBongController::class, 'listAcceptHocBong']);
    Route::get('/active-hocbong/{hocbong_id}', [HocBongController::class, 'activeHocBong']);
    Route::get('/delete-accept-hocbong/{hocbong_id}', [HocBongController::class, 'deleteAcceptHocBong']);
    Route::get('/detail-accept-hocbong/{hocbong_id}', [HocBongController::class, 'detailAcceptHocBong']);

   
   
    Route::get('/delete-user/{id}', [UserController::class, 'deleteUser'])->name('delete_user');











  

    Route::get('/list-thongbao', [ThongBaoController::class, 'listThongBao'])->name('show_thongbao');
    Route::get('/add-thongbao', [ThongBaoController::class, 'addThongBao'])->name('add_thongbao');
    Route::post('/insert-thongbao', [ThongBaoController::class, 'insertThongBao'])->name('insert_thongbao');
    Route::get('/edit-thongbao/{thongbao_id}', [ThongBaoController::class, 'editThongBao']);
    Route::post('/save-thongbao/{thongbao_id}', [ThongBaoController::class, 'saveThongBao'])->name('save_thongbao');
    Route::get('/delete-thongbao/{thongbao_id}', [ThongBaoController::class, 'deleteThongBao'])->name('delete_thongbao');
});

Route::get('/user/login', [UserController::class, 'showLoginHome'])->name('show_form_login_home');
Route::post('/user/login-client', [UserController::class, 'loginClient'])->name('client_login');
Route::get('/user/register', [UserController::class, 'showRegisterHome'])->name('show_register_home');
Route::post('/user/register-client', [UserController::class, 'registerClient'])->name('register_login');
Route::get('/logout-client', [UserController::class, 'logoutClient'])->name('client_logout');

Route::get('/contact-us', [ContactController::class, 'contactUs']);
Route::post('/send', [ContactController::class, 'send']);

Route::middleware('checkloginclient')->group(function () {

    Route::get('/student-information', [UserController::class, 'studentInformation']);
    Route::post('/update-student', [UserController::class, 'updateStudent'])->name('update_student');



    Route::get('/sponser-information', [UserController::class, 'sponsorInformation']);
    Route::post('/update-sponsor', [UserController::class, 'updateSponsor'])->name('update_sponsor');
    Route::get('/upload-hocbong', [UserController::class, 'uploadHocBong']);
    Route::post('/save-upload-hocbong', [UserController::class, 'saveUploadHocBong']);
    Route::get('/post-history', [UserController::class, 'showPostHistory']);
    Route::get('/show-detail-post-history/{$hocbong_id}', [UserController::class, 'showDetailPostHistory']);

    Route::post('/dangky-hocbong', [UserController::class, 'dangkyHocBong'])->name('admin.register');;
});
