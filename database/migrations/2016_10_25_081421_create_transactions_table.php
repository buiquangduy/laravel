<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTransactionsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		//
		Schema::create('transactions', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('status');
			$table->string('user_name');
			$table->string('user_email');
			$table->string('user_phone');
			$table->text('message');
			$table->integer('amount');
			$table->string('payment');
			$table->timestamps();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		//
		//Schema::drop('transactions');
	}

}
