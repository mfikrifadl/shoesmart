<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class editProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'pp_name' => 'required|unique:App\Models\Product,pp_name,' . $this->product->pp_id
        ];
    }
}
