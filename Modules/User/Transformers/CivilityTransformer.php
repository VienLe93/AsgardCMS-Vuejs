<?php

namespace Modules\User\Transformers;

use Illuminate\Http\Resources\Json\Resource;

class CivilityTransformer extends Resource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'nationality' => $this->nationality,
        ];
    }
}
