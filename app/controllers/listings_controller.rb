class ListingsController < ApplicationController

  before_action :authenticate_user!, except:[:index]
	
  def index
		@all_listings = Listing.all

    # @current_location = Listing.geocoded 
      
    if params[:location].present?
      @listing = Listing.near(params[:location], params[:distance] || 10, order: :distance)
    elsif params[:search]
      @tag = Hashtag.find_by(name: params[:search])
      if @tag
        @all_listings = @tag.listings.order(created_at: :desc)
      else
        flash.now[:notice] = "Couldn't find that tag"
        @all_listings = Listing.all
      end
    else
      @all_listings = Listing.all
    end
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
      redirect_to '/'
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
