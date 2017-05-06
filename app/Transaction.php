<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Transaction extends Model {

	protected $table = 'transactions';
	protected $fillable = ['status','user_name','user_email','user_phone','amount','payment','message'];
	//public $timestamps = false;

}
