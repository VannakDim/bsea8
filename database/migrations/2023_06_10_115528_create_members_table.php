<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMembersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('members', function (Blueprint $table) {
            $table->id();
            $table->integer('user_id')->unsigned()->index();
			$table->string('company');
			$table->string('company_logo')->nullable();
			$table->string('country_id')->nullable();
			$table->string('telephone')->nullable();
			$table->string('email')->nullable();
			$table->string('product_id')->nullable();
			$table->string('number_of_worker')->nullable();
			$table->string('address')->nullable();
			$table->string('map')->nullable();
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
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
        Schema::dropIfExists('members');
    }
}
