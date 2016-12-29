(function($){
  $(function(){

    $('.button-collapse').sideNav();
    $('.parallax').parallax();

    callApi('races/dragonborn');

    Materialize.updateTextFields();

    $('.scrollspy').scrollSpy();
    $('.toc-wrapper').pushpin({
      top: 212
    });

  }); // end of document ready
})(jQuery); // end of jQuery name space

function callApi(endpoint) {
  $('#interactive').val(endpoint);
  Materialize.updateTextFields();

  $.getJSON( "/v1/" + endpoint)
    .always(function(data) {
      $('#interactive_output').html(library.json.prettyPrint(data));
    });
}

$('form').submit(function() {
  callApi($('#interactive').val());
  return false; // prevents normal behaviour
});

if (!library)
   var library = {};

library.json = {
  replacer: function(match, pIndent, pKey, pVal, pEnd) {
    var key = '<span class=json-key>';
    var val = '<span class=json-value>';
    var str = '<span class=json-string>';
    var r = pIndent || '';
    if (pKey)
      r = r + key + pKey.replace(/[": ]/g, '') + '</span>: ';
    if (pVal)
      r = r + (pVal[0] == '"' ? str : val) + pVal + '</span>';
    return r + (pEnd || '');
  },
  prettyPrint: function(obj) {
    var jsonLine = /^( *)("[\w]+": )?("[^"]*"|[\w.+-]*)?([,[{])?$/mg;
    return JSON.stringify(obj, null, 3)
      .replace(/&/g, '&amp;').replace(/\\"/g, '&quot;')
      .replace(/</g, '&lt;').replace(/>/g, '&gt;')
      .replace(jsonLine, library.json.replacer);
  }
};
