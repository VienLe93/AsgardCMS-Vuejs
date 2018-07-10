<?php

namespace Modules\User\Entities;

use Illuminate\Database\Eloquent\Model;

class Civility extends Model
{
    protected $table = 'civilities';
    protected $fillable = ['nationality'];
}
