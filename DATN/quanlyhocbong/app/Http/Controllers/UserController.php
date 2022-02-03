<?php

namespace App\Http\Controllers;

use App\Models\DangKyHocBong;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\DB;
use App\Models\User;
use App\Models\Lop;
use App\Models\Nganh;
use App\Models\Khoa;
use App\Models\HocKy;
use App\Models\HocBong;
use App\Models\HoSoDangKy;
use Illuminate\Support\Facades\Gate;

class UserController extends Controller
{
    //TODO: 1. Hiển thị trang Login Client
    public function showLoginHome()
    {
        $title = 'Đăng nhập';
        return view('client_login', compact('title'));
    }

    //TODO: 2. Thực hiện đăng nhập
    public function loginClient(Request $request)
    {
        $request->validate(
            [
                'name' => 'required',
                'password' => 'required',
            ],
            [
                'name.required' => 'Vui lòng nhập tên đăng nhập',
                'password.required' => 'Vui lòng nhập mật khẩu',
            ]
        );
       
        if (Auth::attempt(['name' => $request->name, 'password' => $request->password])) {
            if((Auth::user()->quyen==2 || Auth::user()->quyen==3) && Auth::user()->tinhtrang== 1){
                return Redirect::to('/trangchu');
            }
                session()->put('message', 'Tài khoản này không có quyền truy cập');
                Auth::logout();
                return Redirect::to('/user/login');
        } else {
            session()->put('message', 'Tài khoản hoặc mật khẩu sai');
            Auth::logout();
            return Redirect::to('/user/login');
        }
    }

    //TODO: 3. Hiển thị trang đăng kí Client
    public function showRegisterHome()
    {
        $title = 'Đăng kí';
        return view('client_register', compact('title'));
    }

    //TODO: 4. Thực hiện đăng kí
    public function registerClient(Request $request)
    {
        $request->validate(
            [
                'name' => 'required',
                'password' => 'required',
                'email' => 'required',
                'fullname' => 'required',
                'diachi' => 'required',
                'sdt' => 'required',
            ],
            [
                'name.required' => 'Vui lòng nhập tên đăng nhập',
                'password.required' => 'Vui lòng nhập mật khẩu',
                'email.required' => 'Vui lòng nhập email',
                'fullname.required' => 'Vui lòng nhập tên doanh nghiệp',
                'diachi.required' => 'Vui lòng nhập địa chỉ',
                'sdt.required' => 'Vui lòng nhập số điện thoại',
            ]
        );
        $user = new User();
        $user->name = $request->name;
        $user->password = bcrypt($request->password);
        $user->email = $request->email;
        $user->quyen = $request->quyen;
        $user->fullname = $request->fullname;
        $user->diachi = $request->diachi;
        $user->sdt = $request->sdt;
        $user->tinhtrang = $request->tinhtrang;

        $user->save();
        session()->put('message', 'Đăng ký tài khoản thành công');
        Auth::logout();
        return Redirect::to('/user/register');
    }

    //TODO: 5. Hiển thị danh sách tài khoản đăng kí cần duyệt
    public function listAcceptAccount()
    {
        $title = "Duyệt tài khoản đăng kí";
        $listUser = User::where('tinhtrang', '0')->orderBy('id', 'asc')->get();
        return view('Admin.CTSV.User.listAcceptAccount', compact('title', 'listUser'));
    }

    //TODO: 6. Duyệt đăng kí 
    public function activeUser($id)
    {
        date_default_timezone_set('Asia/Ho_Chi_Minh');
        User::where('id', $id)->update([
            'tinhtrang' => 1,
            'ngayDuyetTV' => now()
        ]);
        session()->put('message', 'Đã duyệt tài khoản đăng kí thành công');
        return redirect()->route('list_account');
    }

    //TODO: 7. Xóa người dùng (trường hợp đăng kí ảo)
    public function deleteUser($id)
    {
        $user = User::findOrFail($id);
        $user->delete();
        session()->put('message', 'Đã xóa tài khoản');
        return Redirect::to('list-accept-account');
    }

    //TODO: 8. Đăng thông tin học bổng (Nhà tài trợ)
    public function uploadHocBong()
    {
        $title = 'Đăng thông tin học bổng';
        $hocky_hocbong = HocKy::orderBy('hocky_id', 'asc')->get();
        return view('Client.User.NhaTaiTro.uploadHocBong', compact('title', 'hocky_hocbong'));
    }

    //TODO: 9. Thực hiện đăng thông tin học bổng
    public function saveUploadHocBong(Request $request)
    {
        $request->validate(
            [
                'hocbong_ten' => 'required',
                'hocbong_noidung' => 'required',
                'hocky_id' => 'required',
                'hocbong_thoigianbatdau' => 'required',
                'hocbong_thoigianketthuc' => 'required',
                'hocbong_kinhphi' => 'required',
                'hocbong_tongsoluong' => 'required',
            ],
            [
                'hocbong_ten.required' => 'Vui lòng nhập tên học bổng',
                'hocbong_noidung.required' => 'Vui lòng nhập nội dung học bổng',
                'hocky_id.required' => 'Vui lòng chọn học kỳ muốn trao học bổng',
                'hocbong_thoigianbatdau.required' => 'Vui lòng chọn thời gian bắt đầu',
                'hocbong_thoigianketthuc.required' => 'Vui lòng chọn thời gian kết thúc',
                'hocbong_kinhphi.required' => 'Vui lòng nhập kinh phí',
                'hocbong_tongsoluong.required' => 'Vui lòng nhập tổng số suất',
            ]
        );
        $data = array();
        $data['hocbong_ten'] = $request->hocbong_ten;
        $data['loaihocbong_id'] = $request->loaihocbong_id;
        $data['hocky_id'] = $request->hocky_id;
        $data['hocbong_hinhanh'] = $request->hocbong_hinhanh;
        $data['hocbong_noidung'] = $request->hocbong_noidung;
        $data['hocbong_thoigianbatdau'] = $request->hocbong_thoigianbatdau;
        $data['hocbong_thoigianketthuc'] = $request->hocbong_thoigianketthuc;
        $data['hocbong_kinhphi'] = $request->hocbong_kinhphi;
        $data['hocbong_tongsoluong'] = $request->hocbong_tongsoluong;
        $data['hocbong_tinhtrang'] = $request->hocbong_tinhtrang;
        $data['user_id'] = $request->user_id;

        $get_image = $request->file('hocbong_hinhanh');
        if ($get_image) {
            $get_name_image =  $get_image->getClientOriginalName();
            $name_image = current(explode('.', $get_name_image));
            $new_image = $name_image . rand(0, 99) . '.' . $get_image->getClientOriginalExtension();
            $get_image->move(base_path() . '/public/Upload/HocBong', $new_image);
            $data['hocbong_hinhanh'] = $new_image;
            DB::table('hocbong')->insert($data);
            session()->put('message', 'Đăng học bổng thành công. Vui lòng chờ duyệt!');
            return Redirect::to('upload-hocbong');
        }
        $data['hocbong_hinhanh'] = '';
        DB::table('hocbong')->insert($data);
        session()->put('message', 'Đăng học bổng thành công. Vui lòng chờ duyệt!');
        return Redirect::to('upload-hocbong');
    }

    //TODO: 10. Hiển thị trang thông tin sinh viên
    public function studentInformation()
    {
        if(Gate::allows('sv')) {
            $title = 'Cập nhật thông tin sinh viên';
            $student_id = Auth::user()->id;
    
            $lop = Lop::orderBy('lop_id', 'asc')->get();
            $nganh = Nganh::orderBy('nganh_id', 'asc')->get();
            $khoa = Khoa::orderBy('khoa_id', 'asc')->get();
            $student = User::where('id', $student_id)
                ->join('lop', 'lop.lop_id', '=', 'users.lop_id')
                ->join('nganh', 'lop.nganh_id', '=', 'nganh.nganh_id')
                ->join('khoa', 'nganh.khoa_id', '=', 'khoa.khoa_id')
                ->first();
            return view('Client.User.SinhVien.showStudentInformation', compact('title', 'student', 'lop'));
        }else {
            return redirect()->back();
        }
    }

    //TODO: 11. Cập nhật thông tin sinh viên
    public function updateStudent(Request $request)
    {
        
        $data = $request->all();
        $data['id'] = Auth::user()->id;
        $sponsor = User::find($data['id']);
        $sponsor->diachi = $data['diachi'];
        $sponsor->sdt = $data['sdt'];
        $sponsor->email = $data['email'];

        $sponsor->save();
        session()->put('message', 'Cập nhật thông tin sinh viên thành công');
        return Redirect::to('student-information');
    }

    //TODO: 12. Hiển thị thông tin nhà tài trợ
    public function sponsorInformation()
    {
        if(Gate::allows('ntt')) {
            $title = 'Cập nhật thông tin nhà tài trợ';
            $sponsor_id = Auth::user()->id;
            $sponsor = User::where('id', $sponsor_id)->first();
            return view('Client.User.NhaTaiTro.showSponsorInformation', compact('title', 'sponsor'));
        }else {
            return redirect()->back();
        }
       
    }

    //TODO: 13. Cập nhật thông tin nhà tài trợ
    public function updateSponsor(Request $request)
    {
        $data = $request->all();
        $data['id'] = Auth::user()->id;
        $sponsor = User::find($data['id']);
        $sponsor->diachi = $data['diachi'];
        $sponsor->sdt = $data['sdt'];
        $sponsor->email = $data['email'];

        $sponsor->save();
        session()->put('message', 'Cập nhật thông tin nhà tài trợ thành công');
        return Redirect::to('sponser-information');
    }

    //TODO: 14. Hiển thị trang lịch sử đăng bài của nhà tài trợ
    public function showPostHistory()
    {
        $title = 'Lịch sử đăng bài';
        $user_id = Auth::user()->id;
        $user = User::orderBy('id', 'asc')->get();
        $list_post = HocBong::orderBy('hocbong_id')
            ->join('users', 'users.id', '=', 'hocbong.user_id')
            ->where('hocbong.user_id', $user_id)
            ->get();
        return view('client_postHistory', compact('title', 'user', 'list_post'));
    }


    public function logoutClient()
    {
        Auth::logout();
        return Redirect::to('/trangchu');
    }

    public function dangkyHocBong(Request $request)
    {
        date_default_timezone_set('Asia/Ho_Chi_Minh');
        $user_id = Auth::id();
        $hocbong_id = $request->hocbong_id;
        $dangky_thoigiandk = now();
        $dataDangKyHocBong = [
            'user_id' => $user_id,
            'hocbong_id' => $hocbong_id,
            'dangky_thoigiandk' => $dangky_thoigiandk,
        ];

        //TODO: Thực hiện đăng ký học bổng
        $dangKyHocBong = DangKyHocBong::create($dataDangKyHocBong);

        //TODO: Tạo hồ sơ đăng ký
      
        $dangky_id = $dangKyHocBong->dangky_id;

        $path_document = 'public/Upload/ThongBao/';
        $images = $request->file('image');
        $tieuchi = $request->tieuchi_id;
       
        foreach($images as $key => $item){
            //upload files
            if($item) {
                $nameFile =  $item->getClientOriginalName();
                $name_document = current(explode('.', $nameFile));
                $fullpath = $name_document.rand(0,99).'.'.$item->getClientOriginalExtension();
                $item->move($path_document, $fullpath);

                //luu data ho so
                $dataHoSo[$key] = [
                    'dangky_id' => $dangky_id,
                    'tieuchi_id' => $tieuchi[$key],
                    'hoso_hinhanh' => $fullpath
                ];
            }   
        }

        // dd($dataHoSo);
        HoSoDangKy::insert($dataHoSo);

        $hocbong = HocBong::find($request->hocbong_id);
        $soluongdadangky = $hocbong->hocbong_soluongdadangky;
         $hocbong->update(['hocbong_soluongdadangky' => $soluongdadangky + 1]);

        return redirect()->back();
     

    }
}
