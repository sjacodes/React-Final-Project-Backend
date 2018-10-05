class Artwork < ApplicationRecord
    has_many :user_selections
    has_many :gallery_walls, through: :user_selections
end
