<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use App\Models\ThongBao;
use App\Models\User;

class ThongBaoController extends Controller
{
    //TODO: 1. Chuyển sang trang quản lý thông báo
    public function listThongBao() {
        $title = 'Quản lý thông báo';
        $thongbao = ThongBao::orderBy('thongbao_id', 'asc')
        ->join('users', 'users.id', '=', 'thongbao.user_id')
        ->get();
        return view('Admin.ThongBao.listThongBao', compact('title', 'thongbao'));
    }

    //TODO: 2. Chuyển sang trang thêm thông báo
    public function addThongBao() {
        $title = 'Thêm thông báo';
        return view('Admin.ThongBao.addThongBao', compact('title'));
    }

    //TODO: 3. Thực hiện thêm thông báo
    public function insertThongBao(Request $request) {

        $request->validate(
            [
                'thongbao_ten' => 'required', 
                'thongbao_mota' => 'required', 
                'thongbao_noidung' => 'required', 
            ],
            [
                'thongbao_ten.required' => 'Vui lòng nhập tên thông báo',
                'thongbao_mota.required' => 'Vui lòng nhập mô tả',
                'thongbao_noidung.required' => 'Vui lòng nhập nội dung',
            ]);
        $data = array();
        date_default_timezone_set('Asia/Ho_Chi_Minh');
        $data['thongbao_ten'] = $request->thongbao_ten;
        $data['thongbao_mota'] = $request->thongbao_mota;
        $data['thongbao_noidung'] = $request->thongbao_noidung;
        $data['thongbao_file'] = $request->document;
        $data['thongbao_thoigiandang'] = now();
        $data['user_id'] = $request->user_id;

        $path_document = 'public/Upload/ThongBao/';
        $get_document = $request->file('document');
        if($get_document) {
            $get_name_document =  $get_document->getClientOriginalName();
            $name_document = current(explode('.', $get_name_document));
            $new_document = $name_document.rand(0,99).'.'.$get_document->getClientOriginalExtension();
            $get_document->move($path_document, $new_document);
            $data['thongbao_file'] = $new_document;
            ThongBao::insert($data);
            session()->put('message','Thêm thông báo thành công');
            return Redirect::to('list-thongbao');
        }
        $data['thongbao_file'] = '';
        ThongBao::insert($data);
        session()->put('message','Thêm thông báo thành công');
        return Redirect::to('list-hocbong');
    }

    //TODO: 4. Chuyển sang trang thêm thông báo
    public function editThongBao($thongbao_id) {
        $title = 'Cập nhật loại học bổng';
        $thongbao = ThongBao::find($thongbao_id);
        if($thongbao) {
            return view('Admin.ThongBao.editThongBao',compact('title','thongbao'));
        }
    }

    //TODO: 5. Thực hiện cập nhật thông báo
    public function saveThongBao(Request $request, $thongbao_id) {
        $data = array();
        date_default_timezone_set('Asia/Ho_Chi_Minh');
        $data['thongbao_ten'] = $request->thongbao_ten;
        $data['thongbao_mota'] = $request->thongbao_mota;
        $data['thongbao_noidung'] = $request->thongbao_noidung;
        $data['thongbao_file'] = $request->document;
        $data['thongbao_thoigiancapnhat'] = now();
       
        $path_document = 'public/Upload/ThongBao/';
        $get_document = $request->file('document');
        if($get_document) {
            $get_name_document =  $get_document->getClientOriginalName();
            $name_document = current(explode('.', $get_name_document));
            $new_document = $name_document.rand(0,99).'.'.$get_document->getClientOriginalExtension();
            $get_document->move($path_document, $new_document);
            $data['thongbao_file'] = $new_document;
            ThongBao::where('thongbao_id', $thongbao_id)->update($data);
            session()->put('message','Cập nhật thông báo thành công');
            return Redirect::to('list-thongbao');
        }
        ThongBao::where('thongbao_id', $thongbao_id)->update($data);
        session()->put('message','Cập nhật thông báo thành công');
        return Redirect::to('list-thongbao');
    }

    //TODO: 6. Thực hiện xóa thông báo
    public function deleteThongBao($thongbao_id) {
        $thongbao = ThongBao::find($thongbao_id);
        $thongbao->delete();
        session()->put('message', 'Xóa thông báo thành công');
        return Redirect::to('list-thongbao');
    }

}
