class Api::V1::GalleryWallsController < ApplicationController

  def create
    artwork = Artwork.find(params[:artwork_id])
    user = User.find(params[:user_id])
    GalleryWall.create(user: user, artwork: artwork)

    render json: user.artworks
  end



end
