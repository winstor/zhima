<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePatentSalesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('patent_sales', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->comment('用户ID');
            $table->integer('patent_id')->comment('专利ID');
            $table->string('patent_sn')->comment('专利号');
            $table->string('patent_name')->comment('专利名称');
            $table->string('patent_person',50)->comment('申请人专利权人');
            $table->integer('patent_domain_id')->default(0)->comment('领域ID');
            $table->integer('patent_type_id')->default(0)->comment('类型ID');
            $table->integer('patent_state_id')->default(0)->comment('专利状态ID');
            $table->integer('cert_state_id')->default(0)->comment('下证状态ID');
            $table->timestamp('apply_date')->nullable()->comment('申请日期');
            $table->string('image')->nullable()->comment('专利图');
            $table->decimal('price',10,2)->default(0)->comment('价格');
            $table->tinyInteger('state')->default(0)->comment('交易状态');
            $table->smallInteger('reserve_number')->default(0)->comment('预定数量');
            $table->tinyInteger('reserve_state')->default(0)->comment('预定状态');
            $table->text('remark')->nullable()->comment('备注');
            $table->timestamps();
            //索引
            $table->index('user_id','用户ID');
            $table->index('patent_person','专利权人');
            $table->index('patent_domain_id','领域ID');
            $table->index('patent_type_id','类型ID');
            $table->index('patent_state_id','专利状态ID');
            $table->index('cert_state_id','下证状态ID/专利状态');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('patent_sales');
    }
}
