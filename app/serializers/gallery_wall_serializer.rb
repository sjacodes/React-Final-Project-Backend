class GalleryWallSerializer < ActiveModel::Serializer
  attributes :id, :user, :captions, :titles, :user_selections
  has_many :user_selections
  class UserSelectionSerializer < ActiveModel::Serializer
    attributes :id, :gallery_wall_id, :artwork, :x_position, :y_position, :width, :height
  end
end
