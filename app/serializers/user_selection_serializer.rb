class UserSelectionSerializer < ActiveModel::Serializer
  attributes :id, :artwork, :gallery_wall, :x_position, :y_position, :width, :height
end
