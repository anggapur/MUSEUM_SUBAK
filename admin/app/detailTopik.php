<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class detailTopik extends Model
{
    //
    use SoftDeletes;
    protected $fillable = ['description','id_topik','media','kategori_media','order'];
}
