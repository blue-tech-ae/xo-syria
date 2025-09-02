<?php

namespace App\Http\Requests\Order;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class CheckAvailableInCityRequest extends FormRequest
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
     * @return array<string, mixed>
     */
    public function rules()
    {
            return [
                'order_items' => 'required|array',
                'order_items.*.product_variation_id' => 'required|integer|exists:product_variations,id',
                'order_items.*.quantity' => 'required|integer|min:1',
                'city_id' => 'required|integer|exists:cities,id',
               
            ];
    }
}
