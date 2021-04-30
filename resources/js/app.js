require('./bootstrap');

require('alpinejs');
import Swal from 'sweetalert2';
window.confirmSuppression = function(formId) {
    Swal.fire({
        title: 'Ets-vous sûre de vouloir supprimer ce produit?',
        text: "Si vous supprimer ce produit, vous ne serez plus en mesure de le recupérer",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Oui, Supprimer!',
        cancelButtonText: 'Annuler'

      }).then((result) => {
        if (result.isConfirmed) {
          document.getElementById(formId).submit()
        }
      })
    
}