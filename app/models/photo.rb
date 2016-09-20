class Photo < ActiveRecord::Base
  has_attached_file :image, styles: {thumb: ["50x50#", :jpg] }
  has_attached_file :profile_image
  validates_attachment :profile_image, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
  validates_attachment :image, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
