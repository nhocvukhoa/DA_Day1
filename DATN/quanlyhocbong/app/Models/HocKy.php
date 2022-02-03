<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HocKy extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable = [
        'hocky_ten', 'hocky_namhoc', 'hocky_thoigianbatdau', 'hocky_thoigianketthuc'
    ];
    protected $primaryKey = 'hocky_id';
    protected $table = 'hocky';
}
