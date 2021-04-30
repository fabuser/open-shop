<?php

namespace Database\Seeders;

use App\Models\Produit;
use Database\Factories\ProduitFactory;
use Illuminate\Database\Seeder;

use Symfony\Component\Process\Process;

class ProduitSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
            Produit::factory(500)->create();

      
    }
}
