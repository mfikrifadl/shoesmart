<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ImgProduct extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $table = 'product.img_product';
    protected $primaryKey = 'pip_id';
    const CREATED_AT = 'pip_created_at';
    const UPDATED_AT = 'pip_update_at';
    const DELETED_AT = 'pip_deleted_at';

    protected $guarded = [
        'pip_id'
    ];

    public function product()
    {
        return $this->belongsTo('App\Models\Product', 'pip_id_product', 'pp_id');
    }
}
