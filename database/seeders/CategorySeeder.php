<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Seeder;


class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        Category::create([
            'libelle'=>"Vêtements",
            'desciption'=>"Ceci est la description de Vêtements",
            
        ]);

       Category::create([
            'libelle'=>"Cosmetique",
            'desciption'=>"Ceci est la description de cosmetique",
            
        ]);

    }
}
