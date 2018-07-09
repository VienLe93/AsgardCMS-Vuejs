<?php

namespace Modules\User\Entities;

use Illuminate\Database\Eloquent\Model;

class Civility extends Model
{
    protected $fillable = ['name'];
    protected $table = 'civilities';
}
