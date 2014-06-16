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

			@comment.save
			redirect_to listing_chatroom_path(@chatroom.listing)
		end
	end
end
