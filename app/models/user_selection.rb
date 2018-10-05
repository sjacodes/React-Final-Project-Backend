class UserSelection < ApplicationRecord
    belongs_to :gallery_wall
    belongs_to :artwork
end
