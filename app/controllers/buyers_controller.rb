class BuyersController < ApplicationController

	def create
	  @listing = Listing.find params[:listing_id]
	  current_user.want_listings << @listing

	  if @listing.buyers.many?
	  	redirect_to '/dashboard'
	  	flash[:notice] = 'You have been added to the waiting list for this item'
	  else
	  	redirect_to listing_chatroom_path(@listing)
	  end
	end

	def destroy
	  @listing = Listing.find params[:listing_id]
	  current_user.want_listings.delete(@listing)
	  redirect_to '/'
	  flash[:notice] = "You've just unwanted an item, why not check out some more cool stuff?"
	end

	def update
		@listing = Listing.find params[:listing_id]
		@listing.update(sold: true) 
		flash[:notice] = "Sale confirmed!"

		redirect_to listing_chatroom_path(@listing)
	end

end
