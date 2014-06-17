class CreateImageContainers < ActiveRecord::Migration
  def change
    create_table :image_containers do |t|
      t.string :name

      t.timestamps
    end
  end
end
