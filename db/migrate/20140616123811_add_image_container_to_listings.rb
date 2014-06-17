class AddImageContainerToListings < ActiveRecord::Migration
  def change
    add_column :listings, :image_container, :string
  end
end
