class RemoveLatitudeFromListings < ActiveRecord::Migration
  def change
    remove_column :listings, :latitude, :float
  end
end
