var SEARCH_ADDRESS = (function(search_address) {
  'use strict';

  var search = function() {
    $('body').on('blur', '.cep', function(e){
      var cep = $(this).val().replace(/\-/g, '');

      $.ajax({
        type: "GET",
        url:  "/search_address/" + cep ,
        dataType: "json",
        success: function (data) {
          $(".address").val(data.tipo_logradouro + ' ' + data.logradouro);
          $(".neighborhood").val(data.bairro);
          $(".city").val(data.cidade);
          $(".state").val(data.uf).change();
        },
        error: function (xhr) {
          if (xhr.status == 422) {
            var errors = $.parseJSON(xhr.responseText).errors;
            alert(errors);
          };
        }
      });
    });
  };

  var search_address = {
    init: function(){
      search();
    },
  };

  return search_address;

}(SEARCH_ADDRESS || {}));


$(document).ready(function(e){
  SEARCH_ADDRESS.init();
});
