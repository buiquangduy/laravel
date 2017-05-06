<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model {

	//
	protected $table = 'orders';
	protected $fillable = ['transaction_id','product_id','qty','amount','status'];
	//public $timestamps = false;

}
