<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePatentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('patents', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->comment('用户ID');
            $table->string('patent_sn')->comment('专利号');
            $table->string('patent_name')->comment('专利名称');
            $table->string('patent_person')->comment('申请人专利权人');
            $table->timestamp('apply_date')->nullable()->comment('申请日期');

            $table->integer('patent_domain_id')->default(0)->comment('领域ID');
            $table->integer('patent_type_id')->default(0)->comment('类型ID');
            $table->integer('patent_case_id')->default(0)->comment('案例状态ID');
            $table->integer('patent_cert_id')->default(0)->comment('下证状态ID');

            $table->integer('electron_user_id')->default(0)->comment('电子账户ID');
            $table->string('inventor',100)->nullable()->comment('发明人设计人');
            $table->text('remark')->nullable()->comment('专利备注');
            $table->string('image')->nullable()->comment('专利图');
            //卖
            $table->decimal('price',10,2)->default(0)->comment('价格');
            $table->tinyInteger('is_cheap')->default(0)->comment('是否特价');
            $table->tinyInteger('is_best')->default(0)->comment('是否优质');
            $table->tinyInteger('sale_state')->default(0)->comment('售卖状态');
            //监控
            $table->tinyInteger('monitor_state')->default(0)->comment('监控状态');
            $table->timestamp('monitor_end_time')->nullable()->comment('监控到期时间');
            $table->text('fee_remark')->nullable()->comment('年费备注');


            $table->timestamps();
            $table->softDeletes();
            //索引
            $table->index('user_id','user_id');
            $table->index('patent_type_id','patent_type_id');
            $table->index('patent_case_id','patent_case_id');
            $table->index('patent_cert_id','patent_cert_id');
            $table->index('patent_domain_id','patent_domain_id');
            //售卖
            $table->index('is_cheap','is_cheap');
            $table->index('is_best','is_best');
            $table->index('sale_state','sale_state');
            //监控状态
            $table->index('monitor_state','monitor_state');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('patents');
    }
}
