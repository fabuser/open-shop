<?php

namespace App\Exports;

use App\Models\Produit;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\FromCollection;


class PorduitsExport implements FromView
{
    /**
    * @return \Illuminate\Support\Collection
    */
   /* public function collection()
    {
        return Produit::get(['designation','prix','quantite']);
    }
    */
    public function view():View //la fonction nous retourne un objet produit
    {
       return View('partials._produits-table',['listProduits'=>Produit::all()]);
    }
}
