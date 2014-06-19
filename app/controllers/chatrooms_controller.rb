class ChatroomsController < ApplicationController

	before_action :authenticate_user!

def create
	# @listing = Listing.find(params:[:listing_id])
	# @buyer = User.find(params:[:buyer_id])
	# @buyer.chatrooms.create
end

def show
	@listing = Listing.find(params[:listing_id])
	@chatroom = @listing.chatroom || Chatroom.create(listing: @listing)
	@comment = Comment.new
	@seller = @listing.seller
	@buyer = @listing.buyers.first
	unless current_user == @chatroom.listing.buyers.first || current_user == @chatroom.listing.seller
		flash[:notice] = 'Access unauthorized'
		redirect_to '/'
	end
end

def index
	@want_listings_chatrooms = current_user.want_listings.map(&:chatroom).compact
	@sales_listings_chatrooms = current_user.sales_listings.map(&:chatroom).compact
end

end
