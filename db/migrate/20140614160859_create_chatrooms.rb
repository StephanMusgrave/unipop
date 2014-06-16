class CreateChatrooms < ActiveRecord::Migration
  def change
    create_table :chatrooms do |t|
      t.belongs_to :buyer, index: true
      t.belongs_to :listing, index: true

      t.timestamps
    end
  end
end
