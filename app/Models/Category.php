<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Category extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $table = 'product.category';
    protected $primaryKey = 'pc_id';
    const CREATED_AT = 'pc_created_at';
    const UPDATED_AT = 'pc_update_at';
    const DELETED_AT = 'pc_delete_at';

    protected $guarded = [
        'pc_id'
    ];

    public function products()
    {
        return $this->belongsToMany('App\Models\Product', 'App\models\product_category', 'ppc_id_category', 'ppc_id_product',);
    }
}
