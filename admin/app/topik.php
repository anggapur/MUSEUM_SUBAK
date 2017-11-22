<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class topik extends Model
{
    //
    use SoftDeletes;
    protected $fillable = ['nama','background','icon','id_parent','order'];

    public function getChilds()
    {
    	return $this->hasMany('App\topik','id_parent')->orderBy('order','ASC');
    }
}
