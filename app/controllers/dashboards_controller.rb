class DashboardsController < ApplicationController
  def show
    @sales_listings = current_user.sales_listings.reload
  end
end
