class ChatroomsController < ApplicationController

def create
	# @listing = Listing.find(params:[:listing_id])
	# @buyer = User.find(params:[:buyer_id])
	# @buyer.chatrooms.create
end

def show
	@listing = Listing.find(params[:listing_id])
	@buyer = User.find(params[:buyer_id])
	@buyer.chatrooms.create(listing_id: params[:listing_id], buyer_id: params[:buyer_id])
end

end
