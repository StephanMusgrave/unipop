class ListingsController < ApplicationController
	def index
		@all_listings = Listing.all
	end

	def new
		@listing = Listing.new
	end



	def show
		@listing
	end

	def edit
		@listing = Listing.find params[:id]
	end

  def update
    @listing = Listing.find(params[:id])
    if @listing.update(params[:listing].permit(:description, :price, :location))
      redirect_to '/listings'
    else
    	flash[:notice] = 'Edits not saved'
      render 'edit'
    end
  end
end
