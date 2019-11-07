<?php

namespace {namespace}\{name}\DTO;

use Illuminate\Foundation\Http\FormRequest;

class Request extends FormRequest
{
    /**
     * @return array
     */
    public function rules()
    {
        return [
            'title' => 'required|max:255'
        ];
    }
}
