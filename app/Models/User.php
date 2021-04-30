<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use App\Models\Produit;

class User extends Authenticatable
{
    use HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function produits()
    {
        # code...
        return $this->belongsToMany(Produit::class);
    }

    public function role()
    {
        # code...
        return $this->belongsTo(Role::class);
    }
    public function isAdmin()
    {
        # code...
       /* if($this->role->profil="super-admin" OR $this->role->profil="admin"){
            return true;
        } else {
            return false;
        }*/
        return $this->role->profil=='super-admin' or $this->role->profil=='admin';

    }
    public function routeNotificationForNexmo($notification)
    {
        return $this->phone_number;
    }
    
}
