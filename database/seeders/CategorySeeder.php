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
            'libelle'=>"VĂȘtements",
            'desciption'=>"Ceci est la description de VĂȘtements",
            
        ]);

       Category::create([
            'libelle'=>"Cosmetique",
            'desciption'=>"Ceci est la description de cosmetique",
            
        ]);

    }
}
