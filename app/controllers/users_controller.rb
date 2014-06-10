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

end
