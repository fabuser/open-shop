<table class="table table-striped ">
    <thead>
        <tr>
            <th>Déignation</th>
            <th>Prix</th>
            <th>Quantité</th>
            <th>Description</th>
            <th>Numero</th>
        
        </tr>
    </thead>
    <tbody>
        @foreach ($listProduits as $produit)
        <tr>
            <td scope="row">{{ $produit->designation }}</td>
            <td>{{ format_prix($produit->prix)}}</td>
            <td>{{ $produit->quantite }}</td>
            <td>{{ $produit->description }}</td>
          
       
            @endforeach
        </tr>
    </tbody>
</table>