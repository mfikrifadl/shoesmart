<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Variant extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $table = 'product.variant';
    protected $primaryKey = 'pv_id';
    const CREATED_AT = 'pv_created_at';
    const UPDATED_AT = 'pv_update_at';
    const DELETED_AT = 'pv_deleted_at';

    protected $guarded = [
        'pv_id'
    ];
    public function products()
    {
        return $this->hasMany('App\Models\Product', 'pv_id_product', 'pp_id');
    }
    public function colors()
    {
        return $this->hasMany('App\Models\Color', 'pv_id_color', 'pc_id');
    }
    public function sizes()
    {
        return $this->hasMany('App\Models\Size', 'pv_id_size', 'ps_id');
    }
    public function size()
    {
        return $this->belongsTo('App\Models\Size', 'pv_id_size', 'ps_id');
    }
    public function product()
    {
        return $this->belongsTo('App\Models\Product', 'pv_id_product', 'pp_id');
    }
}
