<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Color extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $table = 'product.color';
    protected $primaryKey = 'pc_id';
    const CREATED_AT = 'pc_created_at';
    const UPDATED_AT = 'pc_update_at';
    const DELETED_AT = 'pc_deleted_at';

    protected $guarded = [
        'pc_id'
    ];
}
