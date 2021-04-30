<?php
if (!function_exists('nb_produit')) {
    # code...
     function nb_produit($nb)
    {
        if($nb>1){
            return $nb." produits";
        }else {
            return $nb." produit";
        }

    }
}
if (!function_exists('format_prix')) {
    # code...
     function format_prix($prix)
    {
        if($prix>1000){
            return  number_format($prix, 0, ',', ' ')." FCFA";
        }
        /*else {
            return $prix;
        }*/

    }
}


// $nombre_format_francais = number_format($number, 2, ',', ' ');