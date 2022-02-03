@extends('admin_layout')
@section('admin_content')
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary text-center">Cập nhật tiêu chí học bổng</h6>
    </div>
    <div class="card-body">
        <form action="{{route('update_tieuchihocbong',$tieuchihocbong->id)}}" method="POST">
            @csrf
            <div class="form-group">
                <label>Chọn tiêu chí</label>
                <select name="tieuchi_id" class="form-control input-sm m-bot15">
                    @foreach($tieuchi as $key => $item)
                    @if($item->tieuchi_id == $tieuchihocbong->tieuchi_id)
                        <option selected value="{{$item->tieuchi_id}}">{{$item->tieuchi_ten}}</option>
                    @else
                        <option  value="{{$item->tieuchi_id}}">{{$item->tieuchi_ten}}</option>
                    @endif
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label>Chọn học bổng</label>
                <select name="hocbong_id" class="form-control input-sm m-bot15">
                    @foreach($hocbong as $key => $item)
                    @if($item->hocbong_id == $tieuchihocbong->hocbong_id)
                        <option selected value="{{$item->hocbong_id}}">{{$item->hocbong_ten}}</option>
                    @else
                        <option value="{{$item->hocbong_id}}">{{$item->hocbong_ten}}</option>
                    @endif
                    @endforeach
                </select>
            </div>
            <input type="submit" class="btn btn-info mr-2 mt-2" value="Cập nhật">
            <a href="{{route('show_tieuchihocbong')}}" class="btn btn-danger mt-2">Quay lại</a>
        </form>
    </div>
</div>
@endsection