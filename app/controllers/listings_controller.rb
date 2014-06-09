class ListingsController < ApplicationController
	def index
		@all_listings = Listing.all
	end
end
