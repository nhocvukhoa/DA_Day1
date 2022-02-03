<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DangKyHocBong extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable = [
        'user_id', 'hocbong_id', 'dangky_thoigiandk', 'dangky_tinhtrang', 'dangky_nguoiduyet', 'dangky_thoigianduyet' 
    ];
    protected $primaryKey = 'dangky_id';
    protected $table = 'dangkyhocbong';
}
