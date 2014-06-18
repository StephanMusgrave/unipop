class AddImageContainerRelationshipToListings < ActiveRecord::Migration
  def change
    add_column :image_containers, :listing_id, :integer
    add_index :image_containers, :listing_id
  end
end
