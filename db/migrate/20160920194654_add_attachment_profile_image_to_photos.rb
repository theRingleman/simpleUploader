class AddAttachmentProfileImageToPhotos < ActiveRecord::Migration
  def self.up
    change_table :photos do |t|
      t.attachment :profile_image
    end
  end

  def self.down
    remove_attachment :photos, :profile_image
  end
end
