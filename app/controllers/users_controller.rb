class UsersController < ApplicationController
	
	def show
		authenticate_user!
		@user = User.find(params[:id])
		@user_listings = Listing.where(seller: @user)
		# @user_location = User.geocoded 
	end

	# def create 
	# 	@user = User.new(params[:id])
	# 	if @user.save!
	# 	redirect_to user_path current_user
	# 	end
	# end

	# def update
	# 	# @user = User.find(params[:id])
	# 	current_user.update(params[:user].permit(:avatar, :first_name, :last_name))
		
	# 	redirect_to user_path current_user
	# end

end
