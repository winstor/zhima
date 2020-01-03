<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateElectronUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('electron_users', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id',11)->comment('用户ID');
            $table->string('username',100)->comment('账户');
            $table->string('password',100)->comment('密码');
            $table->timestamps();
            $table->index('user_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('electron_users');
    }
}
