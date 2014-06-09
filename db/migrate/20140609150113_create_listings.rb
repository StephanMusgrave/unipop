class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :description
      t.decimal :price
      t.string :location
      t.string :status

      t.timestamps
    end
  end
end
