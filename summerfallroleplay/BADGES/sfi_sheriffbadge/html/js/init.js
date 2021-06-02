$(document).ready(function(){
  // LUA listener
  window.addEventListener('message', function( event ) {
    if (event.data.action == 'open') {
      $('#sheriff-badge').show();
	  $('#sheriff-badge').css('background', 'url(badges/'+event.data.array+')');
    } else if (event.data.action == 'close') {
      $('#sheriff-badge').hide();
    }
  });
});
