<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateUserTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->integer('civility')->nullable();
            $table->integer('post_code')->nullable();
            $table->string('avatar')->nullable();
            $table->tinyInteger('newsletter')->nullable();
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
            $table->dropColumn('civility');
            $table->dropColumn('post_code');
            $table->dropColumn('avatar');
            $table->dropColumn('newsletter');
        });
    }
}
