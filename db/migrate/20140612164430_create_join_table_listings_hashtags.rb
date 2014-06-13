class CreateJoinTableListingsHashtags < ActiveRecord::Migration
  def change
    create_join_table :listings, :hashtags do |t|
      # t.index [:listing_id, :hashtag_id]
      # t.index [:hashtag_id, :listing_id]
    end
  end
end
