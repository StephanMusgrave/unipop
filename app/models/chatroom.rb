class Chatroom < ActiveRecord::Base
  belongs_to :listing
  has_many :comments

  def buyer
  	listing.buyers.first
  end

  def seller
  	listing.seller
  end
  # has_many 
end
