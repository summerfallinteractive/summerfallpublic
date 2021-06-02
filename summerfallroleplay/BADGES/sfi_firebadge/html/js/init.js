$(document).ready(function(){
  // LUA listener
  window.addEventListener('message', function( event ) {
    if (event.data.action == 'open') {
      $('#fire-badge').show();
	  $('#fire-badge').css('background', 'url(badges/'+event.data.array+')');
    } else if (event.data.action == 'close') {
      $('#fire-badge').hide();
    }
  });
});
