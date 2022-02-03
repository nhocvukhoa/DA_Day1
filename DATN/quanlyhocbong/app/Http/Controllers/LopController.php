<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use App\Models\Nganh;
use App\Models\Lop;
use Illuminate\Support\Facades\Gate;

class LopController extends Controller
{
    //TODO: 1. Chuyển sang trnag danh sách lớp
    public function list() {
        if(Gate::allows('ctsv')) {
            $title = 'Danh sách lớp';
            $nganh = Nganh::orderBy('nganh_id','asc')->get();
            $lop = Lop::orderBy('lop_id','asc')
            ->join('nganh', 'nganh.nganh_id', '=' , 'lop.nganh_id')
            ->get();
            return view('Admin.CTSV.Lop.list',compact('title','nganh', 'lop'));
        }
        return redirect()->back();
    }

    //TODO: 2. Chuyển sang trang thêm lớp
    public function add() {
        if(Gate::allows('ctsv')) {
            $title = 'Thêm lớp';
            $nganh = Nganh::orderBy('nganh_id','asc')->get();
            $lop = Lop::orderBy('lop_id','asc')
            ->join('nganh', 'nganh.nganh_id', '=' , 'lop.nganh_id')
            ->get();
            return view('Admin.CTSV.Lop.add',compact('title', 'nganh', 'lop'));
        }
        return redirect()->back();
    }

    //TODO: 3. Thực hiện thêm lớp
    public function insert(Request $request) {
        $request->validate(
            [
                'lop_ten' => 'required|max:255', 
            ],
            [
                'lop_ten.required' => 'Vui lòng nhập tên lớp',
            ]);
    
        $data = $request->all();
        $lop = new Lop();
        $lop->nganh_id = $data['nganh_id'];
        $lop->lop_ten = $data['lop_ten'];
        $lop->save();
        session()->put('message', 'Thêm lớp thành công');
        return redirect()->route('show_lop');
    }

    //TODO: 4. Chuyển sang trang cập nhật lớp
    public function edit($lop_id) {
        if(Gate::allows('ctsv')) {
            $title = 'Cập nhật khoa';
            $nganh = Nganh::orderBy('nganh_id','asc')->get();
            $lop = Lop::where('lop_id', $lop_id)
            ->join('nganh', 'nganh.nganh_id', '=', 'lop.nganh_id')->first();
            if($lop) {
                return view('Admin.CTSV.Lop.edit',compact('title','lop', 'nganh'));
            }
        }
        return redirect()->back();
    } 
   
    //TODO: 5. Thực hiện cập nhật lớp
    public function update(Request $request, $lop_id) {
        $data = $request->all();
        $lop = Lop::find($lop_id);
		$lop->nganh_id = $data['nganh_id'];
		$lop->lop_ten = $data['lop_ten'];
		$lop->update($data);
        session()->put('message','Cập nhật lớp thành công');
        return redirect()->route('show_lop');
    }

    //TODO: 6. Xóa lớp
    public function delete($lop_id) {
        $lop = Lop::find($lop_id);
        if($lop) $lop->delete();
        session()->put('message', 'Xóa lớp thành công');
        return redirect()->route('show_lop');
    }
}
