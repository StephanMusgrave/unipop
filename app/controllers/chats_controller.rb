class ChatsController < ApplicationController

	def new
		@listing = Listing.find(params[:listing_id])
		@buyer = User.find(params[:buyer_id])
		@seller = @listing.seller
	end
end
