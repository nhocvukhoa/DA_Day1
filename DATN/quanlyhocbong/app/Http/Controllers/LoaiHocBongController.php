<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use App\Models\LoaiHocBong;
use App\Models\HocKy;
use App\Models\HocBong;
use Illuminate\Support\Facades\Gate;

class LoaiHocBongController extends Controller
{
    //TODO: 1. Chuyển sang trang danh sách loại học bổng
    public function list()
    {
        if (Gate::allows('ctsv')) {
            $title = 'Danh sách loại học bổng';
            $loaihocbong = LoaiHocBong::orderBy('loaihocbong_id', 'asc')->paginate(5);
            return view('Admin.CTSV.LoaiHocBong.list', compact('title', 'loaihocbong'));
        }
        return redirect()->back();
    }

    //TODO: 2. Chuyển sang trang thêm loại học bổng
    public function add()
    {
        if(Gate::allows('ctsv')) {
            $title = 'Thêm loại học bổng';
            return view('Admin.CTSV.LoaiHocBong.add', compact('title'));
        }
        return redirect()->back();
     
    }

    //TODO: 3. Thêm loại học bổng
    public function insert(Request $request)
    {
        $request->validate(
            [
                'loaihocbong_ten' => 'required|max:255',
            ],
            [
                'loaihocbong_ten.required' => 'Vui lòng nhập tên loại học bổng',
            ]
        );

        $data = $request->all();
        $loaihocbong = new LoaiHocBong();
        $loaihocbong->loaihocbong_ten = $data['loaihocbong_ten'];
        $loaihocbong->save();
        session()->put('message', 'Thêm loại học bổng thành công');
        return redirect()->route('show_loaihocbong');
    }

    //TODO: 4. Chuyển sang trang cập nhật loại học bổng
    public function edit($loaihocbong_id)
    {
        if(Gate::allows('ctsv')) {
            $title = 'Cập nhật loại học bổng';
            $loaihocbong = LoaiHocBong::find($loaihocbong_id);
            if ($loaihocbong) {
                return view('Admin.CTSV.LoaiHocBong.edit', compact('title', 'loaihocbong'));
            }
        }
        return redirect()->back();
    }

    //TODO: 5. Thực hiện cập nhật loại học bổng
    public function update(Request $request)
    {
        $data = $request->all();
        $loaihocbong = LoaiHocBong::find($data['loaihocbong_id']);
        $loaihocbong->loaihocbong_ten = $data['loaihocbong_ten'];
        $loaihocbong->update($data);
        session()->put('message', 'Cập nhật loại học bổng thành công');
        return redirect()->route('show_loaihocbong');
    }

    //TODO: 6. Xóa loại học bổng
    public function delete($loaihocbong_id)
    {
        if(Gate::allows('ctsv')) {
            $loaihocbong = LoaiHocBong::find($loaihocbong_id);
            $loaihocbong->delete();
            session()->put('message', 'Xóa loại học bổng thành công');
            return redirect()->route('show_loaihocbong');
        }
        return redirect()->back();
    }

    //TODO: 7. Hiển thị học bổng theo loại
    public function showHocBongByType($loaihocbong_id)
    {
        $title = 'Hiển thị học bổng theo loại';
        $loaihocbong = LoaiHocBong::orderBy('loaihocbong_id', 'asc')->get();
        $hocky = HocKy::orderBy('hocky_id', 'asc')->get();
        $loaihocbong_id = HocBong::orderBy('hocbong_id', 'asc')
            ->join('loaihocbong', 'loaihocbong.loaihocbong_id', '=', 'hocbong.loaihocbong_id')
            ->where('hocbong.loaihocbong_id', $loaihocbong_id)->paginate(12);
        return view('Client.Home.showHocBongByType', compact('title', 'loaihocbong', 'hocky', 'loaihocbong_id'));
    }
}
