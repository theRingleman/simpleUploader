class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :title, :image_file_name, :profile_image_file_name
end
