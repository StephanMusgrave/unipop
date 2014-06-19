$(document).ready(function() {
	var listing_id = $('.new_comment').data('listing-id');
	var chatroom_id = $('.new_comment').data('chatroom-id');
	$(".new_comment").on('submit', function(event) {
		event.preventDefault();
		var message = $('#comment_body').val();
		if(message.length < 1) return;
		$.ajax({
			url: '/listings/' + listing_id + '/chatroom/comments',
			data: $(this).serialize(),
			method: 'POST'
		}).fail(function() {
			alert('Error: Chat message was not delivered!');
		}).always(function() {
			$('#comment_body').val('');
		});
	});

  var chat_messages_container = $("#chat-messages").html();
  if(chat_messages_container !== undefined) {
  	$("#chat-messages").animate({"scrollTop": $('#chat-messages')[0].scrollHeight}, "slow");
  }

	var connection = new WebSocketRails(window.location.host + '/websocket');
  channel = connection.subscribe('chat_comments');
  channel.bind('new', function(comment) {
  	if(comment.chatroom_id == chatroom_id) {
			comment_html = '<div class="convo convo-' + (comment.user_id===$('.new_comment').data('user-id') ? 'right' : 'left') + '">';
				comment_html += '<img src="' + comment.user_avatar + '" class="img-responsive img-circle convo-img" />';
				comment_html += '<div class="col-xs-8 convo-text">';
					comment_html += comment.body;
					comment_html += '<div class="msg-info">' + comment.timestamp + '</div>';
				comment_html += '</div>';
				comment_html += '<div class="clearfix"></div>';
			comment_html += '</div>';
			comment_html += '<div class="clearfix"></div>';
	    $('#chat-messages').append(comment_html);
			var $t = $('#chat-messages');
	    $t.animate({"scrollTop": $('#chat-messages')[0].scrollHeight}, "slow");
	   }
  });
});