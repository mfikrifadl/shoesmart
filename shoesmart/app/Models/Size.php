<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Size extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $table = 'product.size';
    protected $primaryKey = 'ps_id';
    const CREATED_AT = 'ps_created_at';
    const UPDATED_AT = 'ps_update_at';
    const DELETED_AT = 'ps_deleted_at';

    protected $guarded = [
        'ps_id'
    ];
}
