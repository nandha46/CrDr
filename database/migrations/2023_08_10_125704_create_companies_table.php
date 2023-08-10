<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCompaniesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('companies', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('userid')->unsigned();
            $table->foreign('userid')->references('id')->on('users')->onDelete('cascade');
            $table->string('companyName')->nullable()->default(null);
            $table->string('companyYear');
            $table->string('shortName');
            $table->string('prodId');
            $table->string('rcNo');
            $table->string('companyType');
            $table->boolean('companyFormat');
            $table->dateTime('fromDate')->nullable()->default(null);
            $table->dateTime('toDate')->nullable()->default(null);
            $table->string('address1');
            $table->string('address2');
            $table->string('city');
            $table->string('pincode');
            $table->string('state');
            $table->string('phone1');
            $table->string('phone2');
            $table->string('fax');
            $table->string('email');
            $table->boolean('quantity');
            $table->string('qtyWidth');
            $table->string('qtyDecimal');
            $table->boolean('qtyTotal');
            $table->dateTime('allBDate')->nullable()->default(null);
            $table->dateTime('localBDate')->nullable()->default(null);
            $table->integer('bNoofAcc');
            $table->integer('bNoofEntr');
            $table->dateTime('bLastTransDate')->nullable()->default(null);
            $table->string('allBMedium');
            $table->string('localBMedium');
            $table->string('allBUser');
            $table->string('localBUser');
            $table->dateTime('restoreDate')->nullable()->default(null);
            $table->string('restoreMedium');
            $table->string('restoreUser');
            $table->integer('cNoofAcc');
            $table->integer('cNoofEntries');
            $table->dateTime('cLastTransDate')->nullable()->default(null);
            $table->string('currUser');
            $table->string('lastUser');
            $table->dateTime('currLogin')->nullable()->default(null);
            $table->dateTime('lastLogin')->nullable()->default(null);
            $table->dateTime('logout')->nullable()->default(null);
            $table->dateTime('lockDate')->nullable()->default(null);
            $table->integer('closeStk');
            $table->integer('openCash');
            $table->integer('openDiffDr');
            $table->integer('openDiffCr');
            $table->boolean('hide');
            $table->boolean('graphicPrint');
            $table->string('fileHash');
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
        Schema::dropIfExists('companies');
    }
}
