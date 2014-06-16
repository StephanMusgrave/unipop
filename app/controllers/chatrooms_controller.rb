class ChatroomsController < ApplicationController

def create
	# @listing = Listing.find(params:[:listing_id])
	# @buyer = User.find(params:[:buyer_id])
	# @buyer.chatrooms.create
end

def show
	@listing = Listing.find(params[:listing_id])
	@chatroom = @listing.chatroom || Chatroom.create(listing: @listing)

	unless current_user == @chatroom.buyer || current_user == @chatroom.seller
		flash[:notice] = 'Access unauthorized'
		redirect_to '/'
	end
end

end
