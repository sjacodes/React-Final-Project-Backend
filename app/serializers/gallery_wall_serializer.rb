class GalleryWallSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :artwork_id, :title
end
