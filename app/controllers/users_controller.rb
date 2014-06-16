class UsersController < ApplicationController
	
	def show
		authenticate_user!
		@user = User.find(params[:id])
		@user_listings = Listing.where(seller: @user)
	end

end
