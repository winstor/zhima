<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePatentStatesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('patent_states', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name',100)->comment('专利状态');
            $table->smallInteger('cert_state_id')->default(0)->comment('下证状态');
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
        Schema::dropIfExists('patent_states');
    }
}
