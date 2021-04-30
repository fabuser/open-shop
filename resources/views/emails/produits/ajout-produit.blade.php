@component('mail::message')
# Du nouveau sur OpenShop !

## Un nouveau produit vient d'être ajouté sur votre superbe plateforme OpenShop.

Vous trouverez ci-dessous les informations sur le nouveau produit
### Désignation: {{ $produit->designation }}<br>
### Prix: {{ $produit->prix }}<br>
### Catégorie: {{ $produit->category->libelle }}<br>
<br>
Pour commander ce produit cliquez juste sur le bouton ci-dessous.

@component('mail::button', ['url' => route('produits.show',$produit)])
Commandez ce produit
@endcomponent

Merci d'avoir choisi OpenShop pour votre shopping,<br><br>
{{ config('app.name') }}
@endcomponent
