<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Produit;
use App\Models\User;
use Illuminate\Http\Request;

class FormationController extends Controller
{

    //
    public function index()
    {
        # code...
       // abort(503);//arrête l'exécution et renvoi un message d'erreurs
        $produits=Produit::all();
        $produit= Produit::first();
        $user1=User::first();
        $user1->produits()->attach($produit);// la méthode attach permet d'associer le produit à l'utilisateur
        //dd($produit->users);
        $category= Category::first();

        $produit->category_id=$category->id;
        $produit->save();
       // dd($category->produits);
       // dd($produit->category);
        $produit2= Produit::where(['prix'=>500000,'quantite'=>50])->get();
        

    }

    public function ajouterProduit()
    {
        # code...
      
        $produit= new Produit();
        $produit->designation="Nescafe";
        $produit->prix=8000;
        $produit->description="Maxwell c'est un super café";
        $produit->quantite=50;
        $produit->save();

      //  dd($produit);

    }

    public function ajouterProduit2()
    {
        # code...
        $produit= Produit::create([
            'designation'=>"PC portable",
            'prix'=>500000,
            'description'=>"La description de l'ordinateur",
            'quantite'=>30,
        ]);

       //dd($produit);

    }
    public function updateProduit()
    {
        # code...
        $produit1= Produit::first();
        $produit1->designation="Avovita";
        $produit1->prix=1800;
        $produit1->description="Pomade à base d'avocat";
        $produit1->quantite=10;
        $produit1->save();
        //dd($produit1);

    }

    public function updateProduit2(Produit $produit)
    {
        # code...
      //  $produit2= Produit::findOrFail($produit);
       
            $result= Produit::where('id',$produit->id)->update([
            'designation'=>'Android',
            'prix'=>50000,
            'description'=>"Ceci est la description de téléphone",
            'quantite'=>26,

            
        ]);
         dd($result);

    }
    public function suppressionProduit()
    {
        # code...
        $result= Produit::destroy(1);
        dd($result);
    }
}
