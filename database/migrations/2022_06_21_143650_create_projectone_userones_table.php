<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProjectoneUseronesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    // php artisan make:migration create_projectone_userones_table --create=projectone_userones
    public function up()
    {
        Schema::create('projectone_userones', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('project_id');
            $table->bigInteger('user_id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('projectone_userones');
    }
}
