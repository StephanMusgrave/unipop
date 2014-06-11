class BuyersController < ApplicationController

	def create
	  @listing = Listing.find params[:listing_id]
	  current_user.want_listings << @listing

	  redirect_to @listing
	end
end
