<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTaggablesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    // php artisan make:migration create_taggables_table --create=taggables
    public function up()
    {
        Schema::create('taggables', function (Blueprint $table) {
            $table->integer("tag_id");
            $table->integer("taggable_id");
            $table->string("taggable_type");
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('taggables');
    }
}
