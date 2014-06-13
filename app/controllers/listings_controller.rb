class ListingsController < ApplicationController

  before_action :authenticate_user!, except:[:index]
	
  def index
		@all_listings = Listing.all

    # if self.params[:search]
    # @listings = Listing.search(params[:search]).order("created_at DESC")
    # else
    # @listings = Listing.all.order('created_at DESC')
    # end
	end

	def new
		@listing = Listing.new
	end

  def create    
    @listing = Listing.create(params['listing'].permit(:description, :price, :location, :picture, :hashtag_names))
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
      redirect_to listing_path @listing
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
