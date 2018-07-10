<?php

namespace Modules\User\Http\Controllers\Api;

use Cartalyst\Sentinel\Roles\EloquentRole;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Modules\User\Transformers\CivilityTransformer;
use Modules\User\Entities\Civility;

class CivilityController extends Controller
{
    private $civility;

    public function __construct(Civility $civility)
    {
        $this->civility = $civility;
    }

    public function all()
    {
        return CivilityTransformer::collection($this->civility->all());
    }
}
