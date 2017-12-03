<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class galleryNode extends Model
{
    use SoftDeletes;
    protected $fillable = ['source','nama','id_node'];
}
