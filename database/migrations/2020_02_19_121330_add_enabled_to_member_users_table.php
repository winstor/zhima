<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddEnabledToMemberUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('member_users', function (Blueprint $table) {
            $table->boolean('enabled')->default(true);
        });
        Schema::table('backend_users', function (Blueprint $table) {
            $table->boolean('enabled')->default(true);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('member_users', function (Blueprint $table) {
            $table->dropColumn('enabled');
        });
        Schema::table('backend_users', function (Blueprint $table) {
            $table->dropColumn('enabled');
        });
    }
}
