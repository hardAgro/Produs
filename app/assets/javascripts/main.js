var MAIN = (function(main) {
  'use strict';

  var configMask = function() {
    $("[alt='date']").mask('99/99/9999');
    $("[alt='phone']").mask('(99) 99999-999?9');
    $("[alt='cpf']").mask('999.999.999-99');
    $("[alt='cnpj']").mask('99.999.999/9999-99');
    $("[alt='pis']").mask('999.99999.99-9');
    $("[alt='cep']").mask('99999-999');
    $("[alt='time']").mask('99:99');
    $("[alt='cc']").mask('9999 9999 9999 9999');
    $("[alt='integer']").mask('999.999.999.999');
    $("[alt='decimal']").mask('99,99');
    $("[alt='points']").mask('9,99');
    $("[alt='benefit_number']").mask('999.999.999-9');
  };

  var configPopover = function() {
    $("a[rel~=popover], .has-popover").popover()
  };

  var configTooltip = function() {
    $("a[rel~=tooltip], .has-tooltip").tooltip()
  };

  var configSelect = function() {
    $('select').select2();
  };

  var removeFormattingAtSubmit = function() {
    $('body').on('submit', 'form', function(e){
      removeFormattingInputs();
    });
  };

  var removeFormattingInputs = function() {
    $('form').find('[alt]').each( function(){
      switch (this.alt) {
        case 'integer':
          this.value = main.unformatPtInteger(this.value);
          break;
        case 'decimal':
          this.value = main.unformatPtDecimal(this.value);
          break;
        case 'points':
          this.value = main.unformatPtDecimal(this.value);
          break;
        case 'date':
          break;
        case 'time':
          break;
        default:
          this.value = main.unformat(this.value);
      }
    });
  };

  var main = {
    init: function(){
      configMask();
      configPopover();
      configTooltip();
      configSelect();
      removeFormattingAtSubmit();
    },

    unformatPtDecimal: function(value) {
      if(value && value.constructor == String)
        value = value.replace(/\./g, '').replace(/\,/, '\.');
      return value;
    },

    unformatPtInteger: function(value) {
      if(value && value.constructor == String)
        value = value.replace(/\./g, '');
        if (value != '0') {
          value = value.replace(/^0+/, "")
        }
      return value;
    },

    unformat: function(value) {
      if(value && value.constructor == String)
        value = value.replace(/\./g, '').replace(/\-/g, '').replace(/\//g, '').replace(/\(/g, '').replace(/\)/g, '');
      return value;
    }
  };

  return main;

}(MAIN || {}));

$(document).ready(function(e){
  MAIN.init();
});
