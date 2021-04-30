<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddCategoryIdColumnOnProduitsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('produits', function (Blueprint $table) {
            //
            $table->integer('category_id')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('produits', function (Blueprint $table) {
            $table->dropColumn('category_id');//supprimer une colonne de la table specifiée
            
        });

        //Schema::dropColumns(''); supprimer plusieures colonnes de la table
    }
}
