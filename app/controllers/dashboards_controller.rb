class DashboardsController < ApplicationController
  def show
    @sales_listings = current_user.sales_listings.reload
    @want_listings = current_user.want_listings.reload
  end
end
