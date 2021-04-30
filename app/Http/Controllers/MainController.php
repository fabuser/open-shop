<?php

namespace App\Http\Controllers;

use App\Models\Produit;
use App\Models\User;
use Illuminate\Http\Request;

class MainController extends Controller
{
    //
   
    public function accueil()
    {
        # code...2
        $user=User::orderByDesc('id')->first();
      // dd($user->isAdmin());
      // dd($user->role; retourne le role
      $collect1=collect(["orange","banane","mangue","avocat"]);
      $produits=Produit::all();
      //dd($produits);
      $produitsFiltres=$produits->filter(function($produit,$key){
            return ($produit->prix > 10000 && $produit->prix > 50000);
      });
        //dd($produitsFiltres);
      //dd($produits->avg('prix')); moyenne des prix
        $produits=Produit::orderByDesc('id')->take(9)->get();
        return view('welcome',compact('produits',$produits));

    }
}
