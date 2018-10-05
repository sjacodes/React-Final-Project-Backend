class Api::V1::GalleryWallsController < ApplicationController

  def create
    user = User.find(params[:user_id])
    GalleryWall.create(user: user)
    render json: user.gallery_walls
  end

  def index
    @GalleryWalls = GalleryWall.all
    render json: @GalleryWalls
  end

  def get_galleries
    @user = User.where(email: params[:user_email])
    @walls = GalleryWall.where(user: @user)
    render json: @walls
  end



end
