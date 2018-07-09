<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->string('user_name')->nullable(false)->after('id');
            $table->string('avatar')->nullable()->after('last_name');
            $table->integer('civility_id')->nullable()->after('avatar');
            $table->integer('city_id')->nullable()->after('civility_id');
            $table->tinyInteger('newsletter')->nullable()->after('city_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn('user_name');
            $table->dropColumn('avatar');
            $table->dropColumn('civility_id');
            $table->dropColumn('city_id');
            $table->dropColumn('newsletter');
        });
    }
}
