$(document).ready(function(){
  // LUA listener
  window.addEventListener('message', function( event ) {
    if (event.data.action == 'open') {
      $('#police-badge').show();
	  $('#police-badge').css('background', 'url(badges/'+event.data.array+')');
    } else if (event.data.action == 'close') {
      $('#police-badge').hide();
    }
  });
});
