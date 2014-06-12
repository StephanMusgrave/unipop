class MapsController < ApplicationController

  def show
    @listing = Listing.find(params[:listing_id])
  end

end
