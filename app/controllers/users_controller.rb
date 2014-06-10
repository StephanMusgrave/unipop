class UsersController < ApplicationController
	
	def show
		@user = User.find(params[:id])
	end

	def create 
		@user = User.new(params[:id])
		if @user.save!
			redirect_to "/users/#{user.id}"
		end
	end

	def update
		# @user = User.find(params[:id])
		current_user.update(params[:user].permit(:avatar))

		redirect_to @user
	end

end
