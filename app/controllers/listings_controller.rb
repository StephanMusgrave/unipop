class ListingsController < ApplicationController
	def index
		@all_listings = Listing.all
	end

	def new
		@listing = Listing.new
		puts @listing.inspect
	end
end
