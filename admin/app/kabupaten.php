<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class kabupaten extends Model
{
    //
    use SoftDeletes;
    protected $fillable = ['nama_kabupaten'];
    public function getNodes()
    {
    	return $this->hasMany('App\node','id_kabupaten','id');
    }
}
