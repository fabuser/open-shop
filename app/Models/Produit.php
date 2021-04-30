<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\User;

class Produit extends Model
{
    use HasFactory;
    public $fillable =['designation','prix','description','quantite','category_id','image'];

    public function category()
    {
        # code...
        return $this->belongsTo(Category::class);

    }

    public function users()
    {
        # code...
        return $this->belongsToMany(User::class);
    }

}
