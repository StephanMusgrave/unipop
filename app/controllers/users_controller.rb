class UsersController < ApplicationController
	
	def show
		authenticate_user!
		# @user = User.find(current_user.id)
		# @user_wants = Listing.where(buyer: @user)
		# @user_selling = Listing.where(seller: @user)
		if params[:id]
			user_id = params[:id]
		else
			user_id = current_user.id
		end
		@user_info = User.find(user_id)
		@user_wants = @user_info.want_listings
		@user_selling = @user_info.sales_listings
	end

end
