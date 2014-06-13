class ChatsController < ApplicationController

	def new
		@listing = Listing.find(params[:listing_id])
		@buyer = User.find(params[:buyer_id])
		@seller = @listing.seller
		@seller_name = @listing.seller.first_name
	end
end
