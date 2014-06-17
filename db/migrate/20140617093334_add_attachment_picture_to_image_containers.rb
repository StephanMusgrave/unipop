class AddAttachmentPictureToImageContainers < ActiveRecord::Migration
  def self.up
    change_table :image_containers do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :image_containers, :picture
  end
end
