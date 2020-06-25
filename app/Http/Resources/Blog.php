<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Blog extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        //return parent::toArray($request);

        return [
        'id' => $this->id,
        'title' => $this->title,
        'body' => $this->body,
        'filepath' => $this->filepath,
        'is_deleted' => $this->is_deleted
        ];
    }

    public function with($request){

        return[
            'version' => '1.0.0',
            'author_name' => 'Raeanne Davis'
        ];
    }
}
