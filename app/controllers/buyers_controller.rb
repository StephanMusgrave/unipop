class BuyersController < ApplicationController

	def create
	  @listing = Listing.find params[:listing_id]
	  current_user.want_listings << @listing

	  if @listing.buyers.many?
	  	redirect_to user_path(current_user)
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
		@first_buyer = @listing.buyers.first

		if params[:next_buyer]
			@listing.buyers.delete(@first_buyer)
			redirect_to listing_chatroom_path(@listing)
		elsif @listing.sold
			@listing.buyers.delete(@first_buyer)
			@listing.update(sold: false)
			flash[:notice] = "Relisted!"
			redirect_to listing_path(@listing)
		else
			@listing.update(sold: true)
			flash[:notice] = "Sale confirmed!"
			redirect_to listing_chatroom_path(@listing)
		end
	end

end
