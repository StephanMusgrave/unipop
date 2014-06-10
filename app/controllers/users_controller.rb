class UsersController < ApplicationController
	
	def show
		authenticate_user!
		@user = User.find(params[:id])
	end

	def create 
		@user = User.new(params[:id])
		if @user.save!
		redirect_to user_path current_user
		end
	end

	def update
		# @user = User.find(params[:id])
		current_user.update(params[:user].permit(:avatar))
		
		redirect_to user_path current_user
	end

end
