var modal_holder_selector, modal_selector;

modal_holder_selector = '#modal-holder';
modal_selector = '.modal';

$(document).on('click', 'a[data-modal]', function() {
  var location = $(this).attr('href');
  $.get(location, function(data) {
    return $(modal_holder_selector).html(data).find(modal_selector).modal();
  });
  return false;
});

$(document).on('ajax:success', 'form[data-modal]', function(event, data, status, xhr) {
  var url = xhr.getResponseHeader('Location');
  if (url) {
    $("#remote_modal").modal('toggle');
    $('.alert-success').html("");
    $('.alert-success').show().append("Operação realizada com sucesso!");
    setTimeout(function() {
      return $('.alert-success').slideUp();
    }, 2000);
  } else {
    $('.modal-backdrop').remove();
    $(modal_holder_selector).html(data).find(modal_selector).modal();
  }
  return false;
});

$(document).on("ajaxComplete", function(e){
  MAIN.init();
});
