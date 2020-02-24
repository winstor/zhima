<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePatentSellsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('patent_sells', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('patent_id')->comment('专利ID');
            $table->integer('user_id')->comment('用户ID');
            $table->string('patent_sn')->comment('专利号');
            $table->string('patent_name')->comment('专利名称');
            $table->string('patent_person')->comment('第一申请人');
            $table->date('apply_date')->nullable()->comment('申请日期');
            $table->string('image')->nullable()->comment('专利图');

            $table->integer('patent_domain_id')->default(0)->comment('领域ID');
            $table->integer('patent_type_id')->default(0)->comment('类型ID');
            $table->integer('patent_case_id')->default(0)->comment('案例状态ID');
            $table->integer('patent_cert_id')->default(0)->comment('下证状态ID');
            //卖
            $table->decimal('price',10,2)->default(0)->comment('价格');
            $table->tinyInteger('is_cheap')->default(0)->comment('是否特价');
            $table->tinyInteger('is_best')->default(0)->comment('是否优质');
            $table->tinyInteger('sale_state')->default(0)->comment('售卖状态');
            $table->text('remark')->nullable()->comment('售卖说明');
            $table->timestamps();

            //索引
            $table->index('patent_id','patent_id');
            $table->index('user_id','user_id');
            $table->index('patent_type_id','patent_type_id');
            $table->index('patent_case_id','patent_case_id');
            $table->index('patent_cert_id','patent_cert_id');
            $table->index('patent_domain_id','patent_domain_id');
            //第一申请人
            $table->index('patent_person','patent_person');
            //售卖
            $table->index('is_cheap','is_cheap');
            $table->index('is_best','is_best');
            $table->index('sale_state','sale_state');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('patent_sells');
    }
}
