<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMemberRealsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
//        Schema::create('member_reals', function (Blueprint $table) {
//            $table->increments('id');
//            $table->integer('user_id')->comment('');
//            $table->string('name');
//            $table->string('name');
//            $table->timestamps();
//        });
//        Schema::table('member_users',function(Blueprint $table){
//            $table->string('mobile',11)->nullable()->coment('');
//            $table->string('email',50)->nullable()->coment('');
//            $table->string('qq',20)->nullable()->coment('');
//            $table->string('address',100)->nullable()->coment('');
//            $table->string('sex',10)->nullable()->coment('');
//            $table->timestamp('birthday')->nullable()->coment('');
//            $table->tinyInteger('real_state')->default(0)->comment('');
//        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('member_reals');
    }
}
