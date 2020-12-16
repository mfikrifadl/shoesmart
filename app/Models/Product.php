<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
    use SoftDeletes;
    protected $table = 'product.product';
    protected $primaryKey = 'pp_id';
    const CREATED_AT = 'pp_created_at';
    const UPDATED_AT = 'pp_update_at';
    const DELETED_AT = 'pp_delete_at';

    protected $guarded = [
        'pp_id'
    ];

    public function brand()
    {
        return $this->belongsTo('App\Models\Brand', 'pp_id_brand', 'pb_id');
    }
    public function categories()
    {
        // return $this->belongsToMany('App\Models\Category', 'App\Models\product_category', 'pcc_id_product', 'pcc_id_category');
        return $this->belongsToMany('App\Models\Category', 'App\Models\product_category', 'ppc_id_product', 'ppc_id_category');
    }
    public function imgProducts()
    {
        return $this->hasMany('App\Models\ImgProduct', 'pip_id_product', 'pp_id');
    }
    public function sizes()
    {
        return $this->belongsToMany('App\Models\Size', 'App\Models\Variant', 'pv_id_product', 'pv_id_size');
    }
    public function variants()
    {
        return $this->hasMany('App\Models\Variant', 'pv_id_product', 'pp_id');
    }
    public function colors()
    {
        return $this->belongsToMany('App\Models\Color', 'App\Models\color_product', 'pcp_id_product', 'pcp_id_color');
    }
    public function color_products()
    {
        return $this->hasMany('App\Models\color_product', 'pcp_id_product', 'pp_id');
    }
    public function product_categoies()
    {
        return $this->hasMany('App\Models\product_category', 'ppc_id_product', 'pp_id');
    }
}
