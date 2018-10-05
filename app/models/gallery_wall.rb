class GalleryWall < ApplicationRecord
    belongs_to :user
    has_many :user_selections
    has_many :artworks, through: :user_selections
    has_many :captions
    has_many :titles
end
