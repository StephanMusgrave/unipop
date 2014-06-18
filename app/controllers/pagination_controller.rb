class PaginationController < ApplicationController

  def next_page
  	current_page < total_pages ? (current_page + 1) : nil
	end

end
