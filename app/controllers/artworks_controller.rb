class ArtworksController < ApplicationController

  def index
    @artworks = Artwork.all
    render json: @hotels
  end

  def show
    @artwork = Artwork.find(params[:id])
    render json: @artwork
  end

end
