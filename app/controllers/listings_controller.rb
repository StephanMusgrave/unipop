class ListingsController < ApplicationController
	def index
		@all_listings = Listing.all
	end

	def new
		@listing = Listing.new
	end

	def edit
		@listing = Listing.find params[:id]
	end
end
