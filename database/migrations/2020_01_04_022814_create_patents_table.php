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

            $table->tinyInteger('sale_state')->default(0)->comment('售卖状态');

            $table->timestamps();
            $table->softDeletes();
            //索引
            $table->index('user_id','用户ID');
            $table->index('patent_type_id','类型ID');
            $table->index('patent_case_id','专利状态ID');
            $table->index('patent_cert_id','下证状态ID');
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
