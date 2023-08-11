<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class CreateViewPrivilegesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::statement("CREATE VIEW `view_privileges` AS 
        SELECT 
          `a`.`id` AS `id`, 
          `a`.`menuname` AS `menuname`, 
          `a`.`isdirlink` AS `isdirlink`, 
          `a`.`icons` AS `icons`, 
          `a`.`position` AS `position`, 
          `a`.`ismain` AS `ismain`, 
          `a`.`menuurls` AS `menuurls`, 
          `a`.`islisted` AS `islisted`, 
          `a`.`mainid` AS `mainid`, 
          `a`.`isstatus` AS `isstatus`, 
          `a`.`created_at` AS `created_at`, 
          `a`.`updated_at` AS `updated_at`, 
          `b`.`isedit` AS `isedit`, 
          `b`.`isview` AS `isview`, 
          `b`.`userid` AS `userid`, 
          `b`.`isstatus` AS `prvlstatus` 
        FROM 
          (
            `menus` `a` 
            left join `privileges` `b` on(`a`.`id` = `b`.`menuid`)
          )");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        DB::statement('DROP VIEW IF EXISTS view_privileges');
    }
}
