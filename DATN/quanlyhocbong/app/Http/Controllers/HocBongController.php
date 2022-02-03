<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Session;
use App\Http\Requests;
use Illuminate\Support\Facades\Redirect;
use App\Models\LoaiHocBong;
use App\Models\HocKy;
use App\Models\HocBong;
use App\Models\User;
use App\Models\TieuChi;
use App\Models\TieuChiHocBong;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Gate;
session_start();


class HocBongController extends Controller
{
    //TODO: 1. Chuyển sang trang quản lý học bổng
    public function list() {
        if(Gate::allows('ctsv')) {
            $title = "Danh sách học bổng";
            $listHocBong = HocBong::orderBy('hocbong_id', 'asc')
            ->join('loaihocbong', 'loaihocbong.loaihocbong_id', '=', 'hocbong.loaihocbong_id')
            ->join('hocky', 'hocky.hocky_id', '=', 'hocbong.hocky_id')
            ->join('users', 'users.id', '=', 'hocbong.user_id')
            ->where('hocbong_tinhtrang', '1')
            ->paginate(5);
            return view('Admin.CTSV.HocBong.list',compact('title','listHocBong'));
        }
        return redirect()->back();
    }

    //TODO: 2. Chuyển sang trang thêm học bổng
    public function add() {
        if(Gate::allows('ctsv')) {
            $title = "Thêm học bổng";
            $hocky_hocbong = HocKy::orderBy('hocky_id','asc')->get();
            $loaihocbong_hocbong = LoaiHocBong::orderBy('loaihocbong_id','asc')->get(); 
            $nhataitro_hocbong = User::orderBy('id','asc')->get();
            return view('Admin.CTSV.HocBong.add',compact('title','hocky_hocbong','loaihocbong_hocbong','nhataitro_hocbong'));
        }
        return redirect()->back();
    }

    //TODO: 3. Thực hiện thêm học bổng
    public function insert(Request $request ) {
        $request->validate(
            [
                'hocbong_ten' => 'required|max:255', 
                'hocbong_noidung' => 'required|max:255', 
                'hocbong_thoigianbatdau' => 'required', 
                'hocbong_thoigianketthuc' => 'required', 
                'hocbong_kinhphi' => 'required', 
                'hocbong_tongsoluong' => 'required', 
            ],
            [
                'hocbong_ten.required' => 'Vui lòng nhập tên học bổng',
                'hocbong_noidung.required' => 'Vui lòng nhập nội dung học bổng',
                'hocbong_thoigianbatdau.required' => 'Vui lòng chọn thời gian bắt đầu học bổng',
                'hocbong_thoigianketthuc.required' => 'Vui lòng chọn thời gian kết thúc học bổng',
                'hocbong_kinhphi.required' => 'Vui lòng nhập kinh phí học bổng',
                'hocbong_tongsoluong.required' => 'Vui lòng nhập tổng số suất học bổng',
            ]);

        $data = array();
        date_default_timezone_set('Asia/Ho_Chi_Minh');
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
        $data['hocbong_nguoiduyet'] = $request->hocbong_nguoiduyet;
        $data['user_id'] = $request->user_id;
        $data['hocbong_ngayduyet'] = now();

        $get_image = $request->file('hocbong_hinhanh');
        if($get_image) {
            $get_name_image =  $get_image->getClientOriginalName();
            $name_image = current(explode('.', $get_name_image));
            $new_image = $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
            $get_image->move(base_path().'/public/Upload/HocBong',$new_image);
            $data['hocbong_hinhanh'] = $new_image;
            HocBong::insert($data);
            session()->put('message','Thêm học bổng thành công');
            return redirect()->route('show_hocbong');
        }
        $data['hocbong_hinhanh'] = '';
        HocBong::insert($data);
        session()->put('message','Thêm học bổng thành công');
        return redirect()->route('show_hocbong');
    }

    //TODO: 4. Chuyển sang trang cập nhật học bổng
    public function edit($hocbong_id) {
        $title = "Cập nhật thông tin học bổng";
        $loaihocbong_hocbong = LoaiHocBong::orderBy('loaihocbong_id','asc')->get();
        $hocky_hocbong = HocKy::orderBy('hocky_id','asc')->get();
        $nhataitro_hocbong = User::orderBy('id','asc')->get();
        // $listHocBong = HocBong::where('hocbong_id', $hocbong_id)
        // ->join('loaihocbong', 'loaihocbong.loaihocbong_id', '=', 'hocbong.loaihocbong_id')
        // ->join('hocky', 'hocky.hocky_id', '=', 'hocbong.hocky_id')
        // ->join('users', 'users.id', '=', 'hocbong.user_id')
        // ->first();
        // return view('Admin.HocBong.edit', compact('title', 'listHocBong',
        // 'loaihocbong_hocbong', 'hocky_hocbong', 'nhataitro_hocbong'));
        $listHocBong = DB::table('hocbong')->where('hocbong_id', $hocbong_id)->get();
        $manager_hocbong = view('Admin.CTSV.HocBong.edit')->with('listHocBong', $listHocBong)
        ->with('loaihocbong_hocbong', $loaihocbong_hocbong)->with('hocky_hocbong', $hocky_hocbong)
        ->with('nhataitro_hocbong', $nhataitro_hocbong)->with('title', 'title');
        return view('admin_layout')->with('Admin.CTSV.HocBong.edit', $manager_hocbong)->with('title', $title);
    }

    //TODO: 5. Thực hiện cập nhật thông tin học bổng
    public function update(Request $request,$hocbong_id) {
    
        $data = array();
        $data['hocbong_ten'] = $request->hocbong_ten;
        $data['loaihocbong_id'] = $request->loaihocbong_id;
        $data['hocky_id'] = $request->hocky_id;
        
        $data['hocbong_noidung'] = $request->hocbong_noidung;
        $data['hocbong_thoigianbatdau'] = $request->hocbong_thoigianbatdau;
        $data['hocbong_thoigianketthuc'] = $request->hocbong_thoigianketthuc;
        $data['hocbong_kinhphi'] = $request->hocbong_kinhphi;
        $data['hocbong_tongsoluong'] = $request->hocbong_tongsoluong;
        $data['user_id'] = $request->user_id;

        $get_image = $request->file('hocbong_hinhanh');
        if($get_image) {
            $get_name_image =  $get_image->getClientOriginalName();
            $name_image = current(explode('.', $get_name_image));
            $new_image = $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
            $get_image->move(base_path().'/public/Upload/HocBong',$new_image);
            $data['hocbong_hinhanh'] = $new_image;
            HocBong::where('hocbong_id', $hocbong_id)->update($data);
            session()->put('message','Cập nhật học bổng thành công');
            return redirect()->route('show_hocbong');
        }
        HocBong::where('hocbong_id', $hocbong_id)->update($data);
        session()->put('message','Cập nhật học bổng thành công');
        return redirect()->route('show_hocbong');
    }

    //TODO: 6. Xem thông tin chi tiết học bổng
    public function detail($hocbong_id) {
        if(Gate::allows('ctsv')) {
            $title = 'Chi tiết học bổng';
            $detail_hocbong = HocBong::with('tieuchi')
            ->join('loaihocbong', 'loaihocbong.loaihocbong_id' , '=' , 'hocbong.loaihocbong_id')
            ->join('hocky', 'hocky.hocky_id' , '=' , 'hocbong.hocky_id')
            ->join('users', 'users.id' , '=' , 'hocbong.user_id')
            ->where('hocbong.hocbong_id', $hocbong_id)
            ->get();
            return view('Admin.CTSV.HocBong.detail', compact('title', 'detail_hocbong'));
        }
        return redirect()->back();
       
    }

    //TODO: 7. Xóa học bổng
    public function delete($hocbong_id) {
        if(Gate::allows('ctsv')) {
            $hocbong = HocBong::find($hocbong_id);
            $hocbong->delete();
            session()->put('message', 'Xóa học bổng thành công');
            return redirect()->route('show_hocbong');
        }
        return redirect()->back();
    }

    //TODO: 7. Hiển thị học bổng cùng loại
    public function showHocBongByType($loaihocbong_id) {
        $title = 'Học bổng theo loại';
        $loaihocbong =LoaiHocBong::orderBy('loaihocbong_id', 'asc')->get();
        $hocky = HocKy::orderBy('hocky_id', 'asc')->get();
        $user = User::orderBy('user_id', 'asc')->get();
       
        $loaihocbong_id = HocBong::orderby('hocbong_id', 'asc')
        ->join('loaihocbong', 'loaihocbong.loaihocbong_id' , '=' , 'hocbong.loaihocbong_id')
        ->join('hocky', 'hocky.hocky_id' , '=' , 'hocbong.hocky_id')
        ->join('users', 'users.id' , '=' , 'hocbong.user_id')
        ->where('loaihocbong.loaihocbong_id', $loaihocbong_id)
        ->get();
        return view('Client.Home.showHocBongByType', compact('title', 'loaihocbong', 'hocky', 'user', 
        'loaihocbong_id'));
    }

    //TODO: 8. Hiển thị danh sách bài đăng cần được duyệt 
    public function listAcceptHocBong() {
        $title = "Duyệt bài đăng học bổng";
        $listHocBong = HocBong::orderBy('hocbong_id', 'asc')
        ->join('loaihocbong', 'loaihocbong.loaihocbong_id', '=', 'hocbong.loaihocbong_id')
        ->join('hocky', 'hocky.hocky_id', '=', 'hocbong.hocky_id')
        ->join('users', 'users.id', '=', 'hocbong.user_id')
        ->where('hocbong_tinhtrang', '0')
        ->get();
        return view('Admin.HocBong.listAcceptHocBong',compact('title','listHocBong'));
    }

    //TODO: 9. Duyệt bài đăng học bổng
    public function activeHocBong($hocbong_id) {
        date_default_timezone_set('Asia/Ho_Chi_Minh');
        HocBong::where('hocbong_id', $hocbong_id)->update([
            'hocbong_tinhtrang'=>1, 
            'hocbong_nguoiduyet' => Auth::user()->fullname,
            'hocbong_ngayduyet'=> now()
        ]);
        session()->put('message','Đã duyệt bài đăng thành công');
        return Redirect::to('list-accept-hocbong');
    }

    //TODO: 10. Xóa bài đăng nếu nội dung bài đăng spam
    public function deleteAcceptHocBong($hocbong_id) {
        $hocbong = HocBong::find($hocbong_id);
        $hocbong->delete();
        session()->put('message', 'Xóa học bổng thành công');
        return Redirect::to('list-accept-hocbong');
    }

    //TODO: 10. Xem chi tiết bài đăng cần được duyệt
    public function detailAcceptHocBong($hocbong_id) {
        $title = 'Chi tiết học bổng';
        $loaihocbong = DB::table('loaihocbong')->orderBy('loaihocbong_id', 'asc')->get();
        $hocky = DB::table('hocky')->orderBy('hocky_id', 'asc')->get();
        $nhataitro= DB::table('users')->orderBy('id', 'asc')->get();

        $detail_hocbong = DB::table('hocbong')
        ->join('loaihocbong', 'loaihocbong.loaihocbong_id' , '=' , 'hocbong.loaihocbong_id')
        ->join('hocky', 'hocky.hocky_id' , '=' , 'hocbong.hocky_id')
        ->join('users', 'users.id' , '=' , 'hocbong.user_id')
        ->where('hocbong.hocbong_id', $hocbong_id)
        ->get();
        return view('Admin.HocBong.detailAcceptHocBong', compact('title', 'loaihocbong', 'hocky', 'detail_hocbong', 'nhataitro'));
    }



}
