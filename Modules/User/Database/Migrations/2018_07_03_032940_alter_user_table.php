<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AlterUserTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->string('first_name')->nullable()->after('password')->change();
            $table->string('last_name')->nullable()->after('first_name')->change();
            $table->string('avatar')->nullable()->after('last_name');
            $table->string('address')->nullable()->after('avatar');
            $table->integer('post_code')->nullable()->after('address');
            $table->string('phone')->nullable()->after('post_code');
            $table->boolean('ambassador')->nullable()->after('phone');
            $table->boolean('club')->nullable()->after('ambassador');
            $table->boolean('status')->nullable()->after('club');
            $table->enum('type', [1,2])->default(1)->nullable()->after('status');
            $table->tinyInteger('newsletter')->nullable()->after('type');
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
            $table->dropColumn('avatar')->nullable()->after('last_name')->change();
            $table->dropColumn('address')->nullable()->after('avatar');
            $table->dropColumn('post_code')->nullable()->after('address');
            $table->dropColumn('phone')->nullable()->after('post_code');
            $table->dropColumn('ambassador')->nullable()->after('phone');
            $table->dropColumn('club')->nullable()->after('ambassador');
            $table->dropColumn('status')->nullable()->after('club');
            $table->dropColumn('type', [1,2])->default(1)->nullable()->after('status');
            $table->dropColumn('newsletter')->nullable()->after('type');
        });
    }
}
