<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class musik extends Model
{
	use SoftDeletes;
	protected $fillable = ['nama','source','state'];
    //
}
