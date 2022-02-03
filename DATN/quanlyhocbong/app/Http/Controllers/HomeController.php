<?php

namespace App\Http\Controllers;

use App\Models\DangKyHocBong;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;
use App\Models\LoaiHocBong;
use App\Models\HocKy;
use App\Models\HocBong;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;


class HomeController extends Controller
{  

    public function index() {
        $title = 'Trang chủ';

        $loaihocbong = LoaiHocBong::orderBy('loaihocbong_id', 'asc')->get();
        $hocky = HocKy::orderBy('hocky_id', 'asc')->get();
        $nhataitro = DB::table('users')->orderBy('id', 'asc')->get();
        $listhocbong = HocBong::orderBy('hocbong_id', 'asc')->where('hocbong_tinhtrang', '1')->paginate(12);
      
        return view('Client.Home.showHocBong', compact('title','loaihocbong', 'hocky', 'nhataitro', 'listhocbong'));
    }

    public function searchHocBong(Request $request) {
        $title = 'Kết quả tìm kiếm';
        $keywords = $request->keywords_submit;
        $loaihocbong = LoaiHocBong::orderBy('loaihocbong_id', 'asc')->get();
        $hocky = HocKy::orderBy('hocky_id', 'asc')->get();
        $nhataitro = DB::table('users')->orderBy('id', 'asc')->get();
        $search_hocbong =  HocBong::orderBy('hocbong_id', 'asc')
        ->where('hocbong_ten','like','%'.$keywords.'%')
        ->paginate(3);
        return view('Client.Home.searchHocbong', compact('title','loaihocbong', 'hocky', 'nhataitro', 'search_hocbong'));
    }

    public function detailHocBongHome($hocbong_id) {
        $title = 'Chi tiết học bổng';
        $loaihocbong = LoaiHocBong::orderBy('loaihocbong_id', 'asc')->get();
        $hocky = HocKy::orderBy('hocky_id', 'asc')->get();
        $nhataitro = DB::table('users')->orderBy('id', 'asc')->get();

        if(auth()->id()){
            $userDangKyHocBong = DangKyHocBong::where('user_id', auth()->id())
            ->where('hocbong_id', $hocbong_id)->first();

            $canRegister = empty($userDangKyHocBong);
        }
       
        

        $detail_hocbong = HocBong::with('tieuchi')
        ->join('loaihocbong', 'loaihocbong.loaihocbong_id' , '=' , 'hocbong.loaihocbong_id')
        ->join('hocky' ,'hocky.hocky_id', '=' , 'hocbong.hocky_id')
        ->join('users', 'users.id', '=' , 'hocbong.user_id')
        ->where('hocbong.hocbong_id', $hocbong_id)
        ->orderBy('hocbong_id', 'asc')
        ->get();

        foreach($detail_hocbong as $key => $value) {
            $loaihocbong_id = $value->loaihocbong_id;
        }

        $relate_hocbong = HocBong::orderBy('hocbong_id', 'asc')
        ->join('loaihocbong', 'loaihocbong.loaihocbong_id', '=', 'hocbong.loaihocbong_id')
        ->join('hocky', 'hocky.hocky_id', '=', 'hocbong.hocky_id')
        ->join('users', 'users.id', '=' , 'hocbong.user_id')
        ->where('loaihocbong.loaihocbong_id', $loaihocbong_id)
        ->whereNotIn('hocbong.hocbong_id', [$hocbong_id])
        ->get();

        return view('Client.Home.detailHocBongHome', compact('title' ,'loaihocbong', 'hocky', 'nhataitro', 
        'detail_hocbong', 'relate_hocbong'));
    }

    
}
