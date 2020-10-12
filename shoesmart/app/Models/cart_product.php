<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class cart_product extends Model
{
    use HasFactory;
    protected $table = 'transaction.cart_product';
    protected $primaryKey = 'tcp_id';
    const CREATED_AT = 'tcp_created_at';
    const UPDATED_AT = 'tcp_update_at';

    protected $guarded = [
        'tcp_id'
    ];

    public function carts()
    {
        return $this->belongsTo('App\Models\Cart', 'tcp_id_cart', 'tc_id');
    }
    public function variant()
    {
        return $this->belongsTo('App\Models\Variant', 'tcp_id_variant', 'pv_id');
    }
}
