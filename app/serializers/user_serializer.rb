class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :gallery_walls
  has_many :gallery_walls
  class GalleryWallSerializer < ActiveModel::Serializer
    attributes :id, :captions, :titles, :artworks
  end
end
