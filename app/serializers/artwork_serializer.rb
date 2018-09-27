class ArtworkSerializer < ActiveModel::Serializer
  attributes :id, :title, :artist, :collection, :image
end
