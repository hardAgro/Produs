var TOAST = (function(toast) {
  'use strict';

  var closeToast = function() {
    $('body').on('click', '.toast-close-button', function(e){
      toastr.remove()
    });

    setTimeout(function() {
      $('#toast-container').fadeOut('slow');
    }, 1800);
  };

  var toast = {
    init: function(){
      closeToast();
    }
  };

  return toast;

}(TOAST || {}));

$(document).on('ready page:load', function(e){
  TOAST.init();
});
