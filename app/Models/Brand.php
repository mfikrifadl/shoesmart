<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Brand extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $table = 'product.brand';
    protected $primaryKey = 'pb_id';
    const CREATED_AT = 'pb_created_at';
    const UPDATED_AT = 'pb_update_at';
    const DELETED_AT = 'pb_delete_at';
    protected $guarded = [
        'pb_id'
    ];

    public function products()
    {
        return $this->hasMany('App\Models\Product', 'pp_id_brand', 'pb_id');
    }
}
