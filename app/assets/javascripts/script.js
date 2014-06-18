$(document).ready(function(){
	 $('textarea').keypress(function(e){
	 	if (e.which == 13) {
	 		$(this).closest('form').submit();
		 }
    });
	});
