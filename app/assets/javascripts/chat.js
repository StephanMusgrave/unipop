$(document).ready(function() {
	var listing_id = $('.new_comment').data('listing-id');
	$(".new_comment").on('submit', function(event) {
		event.preventDefault();
		$.ajax({
			url: '/listings/' + listing_id + '/chatroom/comments',
			data: $(this).serialize(),
			method: 'POST'
		}).fail(function() {
			alert('Error: Chat message was not delivered!');
		});
	});
	var connection = new WebSocketRails(window.location.host + '/websocket');
  channel = connection.subscribe('chat_comments');
  channel.bind('new', function(comment) {
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
  });
});