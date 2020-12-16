<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class color_product extends Model
{
    use HasFactory;
    protected $table = 'product.color_product';
    protected $primaryKey = 'pcp_id';
    const CREATED_AT = 'pcp_created_at';
    const UPDATED_AT = 'pcp_update_at';

    protected $guarded = [
        'pcp_id'
    ];

    public function colors()
    {
        return $this->hasMany('App\Models\Color', 'pcp_id_color', 'pc_id');
    }
    public function products()
    {
        return $this->hasMany('App\Models\Product', 'pcp_id_product', 'pp_id');
    }
}
