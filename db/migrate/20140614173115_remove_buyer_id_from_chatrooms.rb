class RemoveBuyerIdFromChatrooms < ActiveRecord::Migration
  def change
    remove_column :chatrooms, :buyer_id, :integer
  end
end
