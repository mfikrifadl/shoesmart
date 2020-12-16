<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class transaction_product extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $table = 'transaction.transaction_product';
    protected $primaryKey = 'ttp_id';
    const CREATED_AT = 'ttp_created_at';
    const UPDATED_AT = 'ttp_update_at';
    const DELETED_AT = 'ttp_delete_at';

    protected $guarded = [
        'ttp_id'
    ];

    public function transaction()
    {
        return $this->belongsTo('App\Models\Transaction', 'ttp_id_transaction', 'tt_id');
    }
    public function variant()
    {
        return $this->belongsTo('App\Models\Variant', 'ttp_id_variant', 'pv_id');
    }
}
