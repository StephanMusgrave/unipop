class RemovePictureFromListings < ActiveRecord::Migration
  def change
    remove_column :listings, :picture, :string
  end
end
