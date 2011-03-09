//HTML 5 ie fix
document.createElement('header');
document.createElement('nav');
document.createElement('article');
document.createElement('section');
document.createElement('footer');

jQuery.ajaxSetup({
  'beforeSend': function (xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
});

$.jGrowl.defaults.position = 'center';
$.jGrowl.defaults.corners = '0px';

$(function() {
  growl_block_content("form #error_explanation", { sticky: true });
  growl_block_content("#flash .alert", { sticky: true });
  growl_block_content("#flash .notice", { life: 30000, theme: 'green-alert' });

  function growl_block_content(selector, options) {
    var block_content = $(selector).html();
    if(block_content) { $.jGrowl(block_content, options) }
  }
});
