class ListingsController < ApplicationController

  # TODO: authenticate

	def index
		@all_listings = Listing.all
	end

	def new
		@listing = Listing.new
	end

  def create    
    @listing = Listing.new(params['listing'].permit(:description, :price, :location))
    @listing.seller = current_user

    if @listing.save
      redirect_to listing_path @listing
      else 
        render 'new'
      end
  end

	def show
		@listing = Listing.find params[:id]
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

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    flash[:notice] = 'Listing successfully deleted'
    redirect_to '/listings'
  end
end
