//HTML 5 ie fix
document.createElement('header');
document.createElement('nav');
document.createElement('article');
document.createElement('section');
document.createElement('footer');

jQuery.ajaxSetup({
  'beforeSend': function (xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
});
