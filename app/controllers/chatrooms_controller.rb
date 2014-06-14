class ChatroomsController < ApplicationController

def create
	# @listing = Listing.find(params:[:listing_id])
	# @buyer = User.find(params:[:buyer_id])
	# @buyer.chatrooms.create
end

def show
	@listing = Listing.find(params[:listing_id])
	@buyer = User.find(params[:buyer_id])
	@buyer.chatrooms.create(listing_id: @listing.id, buyer_id: @buyer.id)
end

end
