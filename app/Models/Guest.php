<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Guest extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $table = 'public.guest';
    protected $primaryKey = 'pg_id';
    const CREATED_AT = 'pg_created_at';
    const UPDATED_AT = 'pg_update_at';
    const DELETED_AT = 'pg_deleted_at';

    protected $guarded = [
        'pg_id'
    ];
}
