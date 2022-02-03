<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Gate;
use App\Models\Nganh;
use App\Models\Khoa;


class NganhController extends Controller
{
    //TODO: 1. Chuyển sang trang danh sách ngành
    public function list() {
        if(Gate::allows('ctsv')) {
            $title = 'Danh sách Ngành';
            $khoa = Khoa::orderBy('khoa_id','asc')->get();
            $nganh = Nganh::orderBy('nganh_id','asc')
            ->join('khoa', 'khoa.khoa_id', '=' , 'nganh.khoa_id')
            ->get();
            return view('Admin.CTSV.Nganh.list',compact('title','nganh', 'khoa'));
        }
        return redirect()->back();
    }

    //TODO: 2. Chuyển sang trang thêm ngành
    public function add() {
        if(Gate::allows('ctsv')) {
            $title = 'Thêm ngành';
            $khoa = Khoa::orderBy('khoa_id','asc')->get();
            $nganh = Nganh::orderBy('nganh_id','asc')
            ->join('khoa', 'khoa.khoa_id', '=' , 'nganh.khoa_id')
            ->get();
            return view('Admin.CTSV.Nganh.add',compact('title', 'nganh', 'khoa'));
        }
        return redirect()->back();
    }

    //TODO: 3. Thêm ngành
    public function insert(Request $request) {
        $request->validate(
            [
                'nganh_ten' => 'required|max:255', 
            ],
            [
                'nganh_ten.required' => 'Vui lòng nhập tên ngành',
            ]);
    
        $data = $request->all();
        $nganh = new Nganh();
        $nganh->khoa_id = $data['khoa_id'];
        $nganh->nganh_ten = $data['nganh_ten'];
        $nganh->save();
        session()->put('message', 'Thêm ngành thành công');
        return redirect()->route('show_nganh');
    }

    //TODO: 4. Chuyển sang trang cập nhật ngành
    public function edit($nganh_id) {
        if(Gate::allows('ctsv')) {
            $title = 'Cập nhật khoa';
            $khoa = Khoa::orderBy('khoa_id','asc')->get();
            $nganh = Nganh::where('nganh_id', $nganh_id)
            ->join('khoa','khoa.khoa_id', '=' ,'nganh.khoa_id')
            ->first();
            if($nganh) {
                return view('Admin.CTSV.Nganh.edit',compact('title','nganh', 'khoa'));
            }
        }
        return redirect()->back();
    } 

    //TODO: 5. Thực hiện cập nhật ngành
    public function update(Request $request, $nganh_id) {
        $data = $request->all();
        Nganh::find($nganh_id)->update($data);
        session()->put('message','Cập nhật ngành thành công');
        return redirect()->route('show_nganh');
    }

    //TODO: 6. Thực hiện xóa ngành
    public function delete($nganh_id) {
        if(Gate::allows('ctsv')) {
            Nganh::where('nganh_id', $nganh_id)->delete();
            session()->put('message','Xóa ngành thành công');
            return redirect()->route('show_nganh');
        }
        return redirect()->back();
    }
}
