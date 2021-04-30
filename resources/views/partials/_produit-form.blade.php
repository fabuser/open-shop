@csrf
<div class="form-group">
  <label for="">Désignation</label>
  <input value="{{ old('designation')?? $produit->designation }}"  required type="text" name="designation" id="designation" class="form-control" placeholder="" aria-describedby="helpId">
  @error("designation")
  <small  class="text-danger">
        {{ $message }}
  </small>
  @enderror
  
</div>
<div class="form-group">
  <label for="">Prix</label>
  <input value="{{old('prix')?? $produit->prix }}" required type="number" name="prix" id="prix" class="form-control" placeholder="" aria-describedby="helpId">
  @error("prix")
  <small  class="text-danger">
        {{ $message }}
  </small>
  @enderror
  
</div>
<div class="form-group">
  <label for="">Quantité</label>
  <input value="{{old('quantite')?? $produit->quantite }}"  required type="number" name="quantite" id="quantite" class="form-control" placeholder="" aria-describedby="helpId">
  @error("quantite")
  <small  class="text-danger">
        {{ $message }}
  </small>
  @enderror
  
</div>
<div class="form-group">
  <label for="">Catégorie</label>
  <select required class="form-control" name="categorie" id="categorie">
      @foreach ($categories as $categorie)
          
      <option {{ $categorie->id==old("produit->category_id")?"selected":"" }} value="{{ $categorie->id }}">{{ $categorie->libelle }}</option>
      @endforeach
    
  </select>
  @error("categorie")
  <small  class="text-danger">
        {{ $message }}
  </small>
  @enderror
</div>
<div class="form-group">
  <label for="">Description</label>
  <textarea name="description" id="description"  rows="3" class="form-control">{{old('description')?? $produit->description }} </textarea>
  @error("description")
  <small  class="text-danger">
        {{ $message }}
  </small>
  @enderror
</div>
<div class="form-group">
  <label for="">Image</label>
  <input type="file" class="form-control-file" name="image" id="image" placeholder="" aria-describedby="fileHelpId">
  @error("image")
  <small  class="text-danger">
        {{ $message }}
  </small>
  @enderror
</div>
    <button type="submit" class="btn btn-primary btn-block btn-lg mt-4">Valider</button>

