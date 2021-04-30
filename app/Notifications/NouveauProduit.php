<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Messages\NexmoMessage;

class NouveauProduit extends Notification
{
    use Queueable;
    public $produit;

    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct($produit)
    {
        $this->produit=$produit;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['mail', 'nexmo'];
    }

    /**
     * Get the mail representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\MailMessage
     */
    public function toMail($notifiable)
    {
        $produit=$this->produit;//avec compact il faut déclarer une variable avant de passer à la vue
        //pour passer un tableau on n'a pas besoin de creer une variable car le tableau est associatif
        return (new MailMessage)->markdown('notifications.produits.nouveau-produit',compact('produit'));
    }
        /**
     * Get the Vonage / SMS representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\NexmoMessage
     */
    public function toNexmo($notifiable)
    {
        return (new NexmoMessage)
                    ->content("Bonjour un nouveau produit vient d'etre ajputé sur OpenShop");
    }

    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toArray($notifiable)
    {
        return [
            //
        ];
    }
}
