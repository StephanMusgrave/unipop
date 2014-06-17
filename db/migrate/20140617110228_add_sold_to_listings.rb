class AddSoldToListings < ActiveRecord::Migration
  def change
    add_column :listings, :sold, :boolean
  end
end
