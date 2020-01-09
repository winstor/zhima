<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGoodsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('goods', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->comment('用户ID');
            $table->string('patent_sn')->comment('专利号');
            $table->string('patent_name')->comment('专利名称');
            $table->string('patent_person')->comment('申请人专利权人');
            $table->integer('patent_domain_id')->default(0)->comment('领域ID');
            $table->integer('patent_type_id')->default(0)->comment('类型ID');
            $table->integer('patent_state_id')->default(0)->comment('专利状态ID');
            $table->integer('cert_state_id')->default(0)->comment('下证状态ID');
            $table->timestamp('apply_date')->nullable()->comment('申请日期');
            $table->string('image')->nullable()->comment('专利图');
            $table->decimal('price',10,2)->default(0)->comment('');
            $table->tinyInteger('state')->default(0)->comment('');
            $table->text('remark')->nullable()->comment('备注');
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
        Schema::dropIfExists('goods');
    }
}
