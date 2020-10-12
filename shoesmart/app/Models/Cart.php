<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Cart extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $table = 'transaction.cart';
    protected $primaryKey = 'tc_id';
    const CREATED_AT = 'tc_created_at';
    const UPDATED_AT = 'tc_update_at';
    const DELETED_AT = 'tc_deleted_at';

    protected $guarded = [
        'tc_id'
    ];

    public function transactions()
    {
        return $this->hasMany('App\Models\Transaction', 'tt_id_cart', 'tc_id');
    }

    public function cart_products()
    {
        return $this->hasMany('App\Models\cart_product', 'tcp_id_cart', 'tc_id');
    }
}
