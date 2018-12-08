var $available_variables = ["Nome", "Nacionalidade", "Estado Civil", "Profissão", "RG", "CPF", "CEP", 
                            "Endereço", "Número", "Bairro", "Cidade", "Estado", "Réus",
                            "Patologias", "Especialidade indicada para perícia médica",
                            "Número do benefício", "Data do requerimento"];

$('[data-provider="summernote"]').each(function(){
  $(this).summernote({
    lang: 'pt-BR',
    placeholder: 'Escreva aqui...',
    dialogsFade: true,
    minHeight: 120,
    hint: {
      mentions: $available_variables,
      match: /\B%([\wÀ-ú]*)$/,
      search: function (keyword, callback) {
        callback($.grep(this.mentions, function (item) {
          match_lowercase     = item.toLowerCase().indexOf(keyword) == 0;
          match_originalcase = item.indexOf(keyword) == 0;
          return (match_originalcase || match_lowercase);
        }));
      },
      content: function (item) {
        return '%{' + item + '}';
      }
    },
    callbacks: {
      onImageUpload: function(files) {
        sendFile(files[0], $(this));
      }
    }
  });
})

function sendFile(file, editor) {
  data = new FormData();
  data.append("file", file);
  $.ajax({
    data: data,
    type: "POST",
    url: "/summernote_images",
    cache: false,
    contentType: false,
    processData: false,
    success: function(response) {
      var imgNode = $('<img>').attr('src', response["url"])[0];
      editor.summernote('insertNode', imgNode);
    }
  });
}