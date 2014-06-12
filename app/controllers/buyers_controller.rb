class BuyersController < ApplicationController

	def create
	  @listing = Listing.find params[:listing_id]
	  current_user.want_listings << @listing

	  if @listing.buyers.many?
	  	redirect_to '/dashboard'
	  else
	  	redirect_to new_listing_buyer_chat_path(@listing, current_user)
	  end
	end
end
