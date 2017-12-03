<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class node extends Model
{
    //
    use SoftDeletes;
    protected $fillable = ['nama_node','id_kabupaten','description','qr_code','primary_image','koordinat'];

}
