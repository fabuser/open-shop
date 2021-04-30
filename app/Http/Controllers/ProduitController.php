<?php

namespace App\Http\Controllers;
use App\Models\User;
use App\Models\Produit;
use App\Models\Category;
use App\Mail\AjoutProduit;
use Illuminate\Http\Request;
use App\Exports\PorduitsExport;
use Illuminate\Support\Facades\Mail;
use Maatwebsite\Excel\Facades\Excel;
use App\Http\Requests\ProduitFormRequest;
use App\Http\Requests\ProduitAjoutFormRequest;
use App\Notifications\NouveauProduit;

class ProduitController extends Controller
{
    public function __construct()
    {
        # code...
        $this->middleware(['auth','isAdmin'])->except(['index','show']);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user=User::first();
        $produit=Produit::orderByDesc("id")->first();
        //dd($produit);
        //dd($user->notify(new NouveauProduit($produit)));
        $produits=Produit::orderByDesc('id')->paginate(15);
        return view('front-office.produits.index',compact('produits',$produits));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $categories=Category::all();
        $produit=new Produit();
        return view('front-office.produits.create',compact('categories','produit'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProduitAjoutFormRequest $request)
    {
        //dd(date('d/m/y H:m:s',time()));
      //dd($request->file('image')->getClientOriginalName());//recuperer avec le nom original de l'image
       
        $imageName="produit.png";
        if($request->file('image')){
            $imageName=time()."_".$request->file('image')->getClientOriginalName();
            $request->file('image')->storeAs('public/produits',$imageName);
        }
       $produit=Produit::create([
           'designation'=>$request->designation,
           'prix'=>$request->prix,
           'quantite'=>$request->quantite,
           'description'=>$request->description,
           'category_id'=>$request->categorie,
           'image'=>$imageName,
       ]);
       $user=User::all();//recupération du 1er utilisateur
       //$produit=Produit::orderByDesc('id')->first();
       Mail::to($user)->send(new AjoutProduit($produit));//envoi mail à l'utilisateur avec instanciation d'un objet Mail
       return redirect()->route('produits.show',$produit)->with('statut',"votre nouveau produit a été bien ajouté");
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Produit $produit)
    {
        //
        return view('front-office.produits.show',compact('produit'));

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Produit $produit)
    {
        //
        $categories= Category::all();
        return view('front-office.produits.edit',['produit'=>$produit,'categories'=>$categories]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(ProduitFormRequest $request, $id)
    {
        //
        $imageName="produit.png";
        if($request->file('image')){
            $imageName=time()."_".$request->file('image')->getClientOriginalName();
            $request->file('image')->storeAs('public/produits',$imageName);
        }
       
        Produit::where('id',$id)->update([
            //dd($request->designation);
            
            'designation'=>$request->designation,
            'prix'=>$request->prix,
            'quantite'=>$request->quantite,
            'description'=>$request->description,
            'category_id'=>$request->categorie,
            'image'=>$imageName,

        ]);
        $user=User::first();
        $produit=Produit::where('id',$id)->first();
        //dd($produit);
        $user->notify(new NouveauProduit($produit));
        return redirect()->route('produits.show',$id)->with('statut','Votre produit a bien été modifé');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)

    {
        //
        Produit::destroy($id);
        return redirect()->route('produits.index')->with('statut',"Votre produit a bien été supprimé");
    }
    public function export()
    {
       return Excel::download(new PorduitsExport,'produits.xlsx');
        # code...
    }
   
}
