<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class galleryPhoto extends Model
{
    //
    use SoftDeletes;
    protected $fillable = ['id_topik','id_kategori','nama','source','description','order'];
}
