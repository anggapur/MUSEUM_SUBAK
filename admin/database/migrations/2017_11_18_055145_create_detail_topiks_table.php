<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDetailTopiksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('detail_topiks', function (Blueprint $table) {
            $table->increments('id');
            $table->string('id_topik');
            $table->text('description');
            $table->string('media');
            $table->enum('kategori_media',['P','V']);
            $table->string('order');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('detail_topiks');
    }
}
