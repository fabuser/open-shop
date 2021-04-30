<?php

use App\Models\Produit;
use App\Mail\AjoutProduit;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MainController;
use App\Http\Controllers\ProduitController;
use App\Http\Controllers\FormationController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/',[MainController::class,'accueil'])->name('accueil');

Route::resource('produits',ProduitController::class);
Route::get('ajouter-produit',[FormationController::class,'ajouterProduit']);
Route::get('ajouter-produit2',[FormationController::class,'ajouterProduit2']);
Route::get('index',[FormationController::class,'index']);
Route::get('update-produit',[FormationController::class,'updateProduit']);
Route::get('update-produit2/{produit}',[FormationController::class,'updateProduit2']);
Route::get('suppression-produit/',[FormationController::class,'suppressionProduit']);
Route::get('export',[ProduitController::class,'export'])->name('export');
Route::get('test-mail',function(){
return new AjoutProduit(Produit::orderByDesc('id')->first());
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';
