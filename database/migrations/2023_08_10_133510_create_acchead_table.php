<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAccheadTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('acchead', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('companyId')->unsigned();
            $table->foreign('companyId')->references('id')->on('companies')->onDelete('cascade');
            $table->integer('accCode');
            $table->string('accName');
            $table->string('accType');
            $table->double('drAmt',10,2);
            $table->double('crAmt',10,2);
            $table->integer('sno');
            $table->integer('level1');
            $table->bigInteger('orderCode');
            $table->string('shortName');
            $table->double('budgDrAmt',10,2);
            $table->double('budgCrAmt',10,2);
            $table->boolean('userStatus');
            $table->boolean('stkNeed');
            $table->double('stkOpen',10,2);
            $table->string('stkStatus');
            $table->boolean('status')->default(true);
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->nullable()->useCurrentOnUpdate();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('acchead');
    }
}
