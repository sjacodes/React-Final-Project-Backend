class User < ApplicationRecord
    has_many :gallery_walls
    has_many :artworks, through: :gallery_walls
end
