$(document).ready(function(){
	 $(document).keypress(function(e){
	 	if (e.which == 13) {
	 	e.preventDefault();
	 	var commentBody = $('textarea[id=comment_body]').val();
	 	var
	 		 	$('.chatroom-comments-container').append("<p>" + commentBody + "</p>");
	 		}
    });
	});
