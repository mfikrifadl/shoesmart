<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class product_category extends Model
{
    use HasFactory;
    protected $table = 'product.product_category';
    protected $primaryKey = 'ppc_id';
    const CREATED_AT = 'ppc_created_at';
    const UPDATED_AT = 'ppc_update_at';

    protected $guarded = [
        'ppc_id'
    ];

    public function categories()
    {
        return $this->hasMany('App\Models\Category', 'ppc_id_category', 'pc_id');
    }
    public function products()
    {
        return $this->hasMany('App\Models\Product', 'ppc_id_product', 'pp_id');
    }
}
