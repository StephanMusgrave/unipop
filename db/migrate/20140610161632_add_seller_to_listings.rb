class AddSellerToListings < ActiveRecord::Migration
  def change
    add_reference :listings, :seller, index: true
  end
end
