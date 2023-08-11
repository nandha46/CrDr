<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class CreateViewUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::statement("CREATE VIEW `view_users` AS 
        SELECT 
          `a`.`id` AS `id`, 
          `a`.`username` AS `username`, 
          if(
            `a`.`status` = 1, 'Active', 'In-Active'
          ) AS `userstatus`, 
          CASE WHEN `a`.`usertype` = 1 THEN 'Super-Admin' WHEN `a`.`usertype` = 2 THEN 'Admin' WHEN `a`.`usertype` = 3 THEN 'Staff' ELSE 'Others' END AS `usertyperesult` 
        FROM 
          `users` AS `a`");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        DB::statement('DROP VIEW IF EXISTS view_users');
    }
}
