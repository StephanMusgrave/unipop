class CreateJoinTableWaitList < ActiveRecord::Migration
  def change
    create_join_table :listings, :buyers do |t|
      # t.index [:listing_id, :buyer_id]
      # t.index [:buyer_id, :listing_id]
    end
  end
end
