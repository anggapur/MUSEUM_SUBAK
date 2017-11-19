<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class kategori extends Model
{
    //
    protected $fillable = ['nama'];
    public function getPhotos()
    {
    	return $this->hasMany('App\galleryPhoto','id_kategori','id');
    }
    public function getVideos()
    {
    	return $this->hasMany('App\galleryVideo','id_kategori','id');
    }
}
