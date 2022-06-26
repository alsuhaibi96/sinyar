<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use App\Models\MediaAsset;

class Slider extends Model
{
    use HasFactory;


    public function assets(){
        return $this->hasMany(MediaAsset::class,'slider_id');
    }

    public function single_page(){
        return $this->belongsTo(HomePageSection::class);
    }
}
