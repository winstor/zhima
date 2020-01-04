<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePatentCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('patent_categories', function (Blueprint $table) {
            $table->increments('id');
            $table->string('cat_name',100)->comment('名称');
            $table->smallInteger('cat_number')->comment('编号数字');
            $table->string('logo',100)->nullable()->comment('logo');
            $table->smallInteger('sort')->default(0)->comment('排序');

            $table->string('full_name',100)->nullable()->comment('全称');
            $table->string('cat_sn',100)->nullable()->comment('唯一编号');
            $table->integer('pid')->default(0)->comment('父类ID');
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
        Schema::dropIfExists('patent_categories');
    }
}
