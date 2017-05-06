<?php namespace App\Http\Requests;

use App\Http\Requests\Request;

class TransactionRequest extends Request {

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
			'username'=> 'required',
			'email' => 'required|regex:/^[a-z][a-z0-9]*(_[a-z0-9]+)*(\.[a-z0-9]+)*@[a-z0-9]([a-z0-9-][a-z0-9+])*(\.[a-z]{2,4}){1,2}$/',
			'telephone' => 'required',
			'note'  => 'required',
			'sltPayment' => 'required'

		];
	}
	public function messages()
	{
		return [
			'username.required' => 'Please enter yourname',
			'email.required'  => 'Please enter email of you',
			'email.regex'    => 'Email error syntax',
			'telephone.unique'    => 'please enter telephone',
			'telephone.regex'    => 'don\'t enter word',
			'note.required'  => 'Please enter address',
			'sltPayment.required'  => 'Please enter Payment gateway'
			
  		];
	}

}
