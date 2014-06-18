class RemoveLongitudeFromListings < ActiveRecord::Migration
  def change
    remove_column :listings, :longitude, :float
  end
end
