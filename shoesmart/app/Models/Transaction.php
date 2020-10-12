<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Transaction extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $table = 'transaction.transaction';
    protected $primaryKey = 'tt_id';
    const CREATED_AT = 'tt_created_at';
    const UPDATED_AT = 'tt_update_at';
    const DELETED_AT = 'tt_deleted_at';

    protected $guarded = [
        'tt_id'
    ];

    public function cart()
    {
        return $this->belongsTo('App\Models\Cart', 'tt_id_cart', 'tc_id');
    }

    public function transaction_products()
    {
        return $this->hasMany('App\Models\transaction_product', 'ttp_id_transaction', 'tt_id');
    }
    public function variants()
    {
        return $this->belongsToMany('App\Models\Variant', 'App\Models\transaction_product', 'ttp_id_transaction', 'ttp_id_variant');
    }
}
