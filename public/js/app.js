(function($){
  $(function(){

    $('.button-collapse').sideNav();
    $('.parallax').parallax();

    if (elementExists('#testapi')) {
      callApi('#interactive_output', 'races/dragonborn');
    }

    if (elementExists('#docs')) {
      Materialize.scrollFire(options);
    }

    Materialize.updateTextFields();

    $('.scrollspy').scrollSpy();
    $('.toc-wrapper').pushpin({
      top: 212,
      offset: -55
    });

  }); // end of document ready
})(jQuery); // end of jQuery name space

const options = [
  {
    selector: '#races',
    offset: 0,
    callback: function(el) {
      callApi('#race_index', 'races/');
      callApi('#race_details', 'races/dragonborn');
      callApi('#subrace_index', 'races/elf');
      callApi('#subrace_details', 'races/elf/dark-elf');
    }
  },
  {
    selector: '#classes',
    offset: 50,
    callback: function(el) {
      callApi('#class_index', 'classes/');
      callApi('#class_details', 'classes/barbarian');
      callApi('#class_levels_index', 'classes/ranger/levels');
      callApi('#class_levels_show', 'classes/wizard/levels/20');
      callApi('#class_subclass_index', 'classes/cleric/subclasses');
      callApi('#class_subclass_details', 'classes/bard/college-of-lore');
      callApi('#class_subclass_level_details', 'classes/rogue/arcane-trickster/16');
    }
  },
  {
    selector: '#spells',
    offset: '',
    callback: function(el) {
      /* Placeholder */
    }
  },
  {
    selector: '#skills-abilities',
    offset: 500,
    callback: function(el) {
      callApi('#ability_index', 'abilities/');
      callApi('#ability_details', 'abilities/wisdom');
      callApi('#skill_index', 'skills/');
      callApi('#skill_details', 'skills/stealth');
    }
  },
  {
    selector: '#traits',
    offset: 500,
    callback: function(el) {
      callApi('#trait_index', 'traits/');
      callApi('#trait_details', 'traits/breath-weapon');
    }
  },
  {
    selector: '#languages',
    offset: 600,
    callback: function(el) {
      callApi('#language_index', 'languages/');
      callApi('#language_details', 'languages/common');
    }
  },
  {
    selector: '#feats',
    offset: '',
    callback: function(el) {
      /* Placeholder */
    }
  },
  {
    selector: '#backgrounds',
    offset: '',
    callback: function(el) {
      /* Placeholder */
    }
  },
  {
    selector: '#weapons-armor',
    offset: '',
    callback: function(el) {
      /* Placeholder */
    }
  },
  {
    selector: '#adventuring-gear',
    offset: '',
    callback: function(el) {
      /* Placeholder */
    }
  },
  {
    selector: '#tools-trinkets',
    offset: '',
    callback: function(el) {
      /* Placeholder */
    }
  },
  {
    selector: '#mounts-vehicles',
    offset: '',
    callback: function(el) {
      /* Placeholder */
    }
  },
  {
    selector: '#monsters',
    offset: '',
    callback: function(el) {

    }
  },
  {
    selector: '#traps',
    offset: '',
    callback: function(el) {

    }
  }
]

function elementExists(e) {
  if ($(e).length)
    return true;
  else
    return false;
}

function callApi(element, endpoint) {
  if (elementExists('#interactive')) {
    $('#interactive').val(endpoint);
    Materialize.updateTextFields();
  }

  $.getJSON( "v1/" + endpoint)
    .always(function(data) {
      $(element).html(library.json.prettyPrint(data));
    });
}

$('form').submit(function() {
  callApi('#interactive_output', $('#interactive').val());
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
