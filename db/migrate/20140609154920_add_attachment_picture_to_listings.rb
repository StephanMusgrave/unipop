class AddAttachmentPictureToListings < ActiveRecord::Migration
  def self.up
    change_table :listings do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :listings, :picture
  end
end
