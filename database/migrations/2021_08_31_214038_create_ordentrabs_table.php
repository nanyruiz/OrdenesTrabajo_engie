<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdentrabsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ordentrabs', function (Blueprint $table) {
            $table->increments('id_orden');
            $table->dateTime('fecha_creacion');
            $table->date('fecha_asignacion');
            $table->date('fecha_ejecucion');
            $table->integer('id_tipo')->unsigned();            
            $table->foreign('id_tipo')->references('id_tipo')->on('tipoordens');
            $table->integer('id_operador')->unsigned();            
            $table->foreign('id_operador')->references('id_operador')->on('operadores');
            $table->string('resultado');
            $table->double('valor', 10, 2);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ordentrabs');
    }
}
