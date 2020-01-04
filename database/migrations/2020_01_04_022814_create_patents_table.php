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
            $table->integer('electron_user_id')->default(0)->comment('电子账户ID');
            $table->string('patent_sn')->comment('专利号');
            $table->string('patent_name')->comment('专利名称');
            $table->mediumInteger('college_id')->default(0)->comment('高校ID');
            $table->string('Patent_person')->comment('申请人专利权人');
            $table->string('inventor',100)->nullable()->comment('发明人设计人');
            $table->integer('patent_domain_id')->comment('领域ID');
            $table->integer('patent_type_id')->comment('类型ID');
            $table->integer('patent_state_id')->comment('专利状态ID');
            $table->integer('cert_state_id')->comment('下证状态ID');
            $table->timestamp('apply_date')->comment('申请日期');
            $table->text('patent_remark')->comment('专利备注');
            $table->string('image')->nullable()->comment('专利图');

            $table->tinyInteger('is_monitor')->default(0)->comment('是否监控');
            $table->tinyInteger('monitor_state')->default(0)->comment('监控状态');
            $table->timestamp('monitor_date')->nullable()->comment('监控到期时间');
            $table->text('fee_remark')->comment('年费备注');
            $table->timestamps();
            //索引
            $table->index('user_id','用户ID');
            $table->index('electron_user_id','电子账户ID');
            $table->index('college_id','高校ID');
            $table->index('patent_type_id','类型ID');
            $table->index('patent_state_id','专利状态ID');
            $table->index('cert_state_id','下证状态ID');
            $table->index('patent_domain_id','领域ID');

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
