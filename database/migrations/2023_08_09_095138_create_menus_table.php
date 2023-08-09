<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMenusTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('menus', function (Blueprint $table) {
            $table->id();
            $table->string('menuname');
            $table->boolean('isdirlink');
            $table->string('icons')->nullable()->default(null);
            $table->integer('position');
            $table->boolean('ismain');
            $table->string('menuurls')->nullable()->default(null);
            $table->boolean('islisted')->default(true);
            $table->bigInteger('mainid')->default(0);
            $table->boolean('isstatus')->default(true);
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('menus');
    }
}
