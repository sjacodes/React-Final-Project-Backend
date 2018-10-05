class CaptionSerializer < ActiveModel::Serializer
  attributes :id, :gallery_wall_id, :text, :x_position, :y_position, :width, :height, :rendered, :title
end
