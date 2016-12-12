(function($){
  $(function(){

    $('.button-collapse').sideNav();
    $('.parallax').parallax();
    
    callApi('races/1');
    
    Materialize.updateTextFields();
    
  }); // end of document ready
})(jQuery); // end of jQuery name space

function callApi(endpoint) {
  $('#interactive').val(endpoint);
  
  $.getJSON( "/api/v1/" + endpoint, function( data ) {
    var title = null;
    $('#interactive_output').html(library.json.prettyPrint(data));

    if (endpoint.includes('races')) {
      if (data.subrace != null) {
        setTitle(data.subrace);
      } else if (data.name != null) {
        setTitle(data.name);
      } else {
        setTitle('Races');
      }
    } else if (endpoint.includes('classes')) {

    } else {
        setTitle(endpoint);
    }
  });
  
  function setTitle(title) {
    $('#interactive_title').text(title);
  }
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
