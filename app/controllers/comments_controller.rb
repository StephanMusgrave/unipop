include ActionView::Helpers::DateHelper
class CommentsController < ApplicationController
	def create
		@listing = Listing.find(params[:listing_id])
		@chatroom = @listing.chatroom

		unless current_user == @chatroom.buyer || current_user == @chatroom.seller
			flash[:notice] = 'Access unauthorized'
			redirect_to '/'
		else
			@comment = @chatroom.comments.new(params[:comment].permit(:body))
			@comment.user = current_user
			WebsocketRails[:chat_comments].trigger 'new', {
				body: params[:comment]['body'],
				user_full_name: current_user.first_name + ' ' + current_user.last_name,
				user_avatar: current_user.avatar.blank? ? '/images/default_avatar.jpg' : current_user.avatar.url(:medium),
				timestamp: time_ago_in_words(Time.now) + ' ago',
				user_id: current_user.id
			}
			@comment.save
			redirect_to listing_chatroom_path(@chatroom.listing)
		end
	end
end
