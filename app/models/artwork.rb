class Artwork < ApplicationRecord
    has_many :gallery_walls
    has_many :users, through: :gallery_walls
end
