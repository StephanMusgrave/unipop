class Chatroom < ActiveRecord::Base
  belongs_to :listing

  def buyer
  	listing.buyers.first
  end

  def seller
  	listing.seller
  end
  # has_many 
end
