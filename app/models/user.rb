class User < ApplicationRecord
    has_many :gallery_walls
    has_many :artworks, through: :gallery_walls
    has_many :captions, through: :gallery_walls
    has_many :titles, through: :gallery_walls
    has_secure_password
    validates :email, uniqueness: { case_sensitive: false}

end
