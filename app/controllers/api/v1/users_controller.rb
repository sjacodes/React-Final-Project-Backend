class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end


  def signin
    user = User.find_by(email: params[:email])
    User.current = user
    if user && user.authenticate(params[:password])
      render json: {email: user.email, token: issue_token({id: user.id}), id: user.id}
    else
      render json: { error: 'Invalid username and password combination.' }, status: 400
    end
  end

  def validate
    user = currrent_user
    User.current = user
    if user
      render json: {email: user.email, id: user.id, token: token, user_now: User.current}
    else
      render json: {error: 'Validation failed.'}, status: 400
    end
  end

  def get_current_user_galleries
    user = Thread.current[:user]
    @galleries = GalleryWall.where(user: user)
    render json: @galleries
  end


  def signup
    @user = User.create(email: params[:email], password: params[:password])
    User.current = @user
    if @user.valid?
      GalleryWall.create([{user_id: @user.id}, {user_id: @user.id}, {user_id: @user.id}])
      render json: {email: @user.email, token: issue_token({id: @user.id}), id: @user.id}, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def get_galleries
    @user = User.find(params[:id])
    @galleries = GalleryWall.where(user: @user)
    render json: @galleries
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      render json: @user
    else
      render json: @user.errors
    end
  end


  def purchased
    @user = User.find(params[:id])
    render json: @user
  end

  def add_artwork
    @user = User.find_by(email: params[:user_email])
    @artwork = Artwork.find(params[:artwork_id])
    @gallery_wall = @user.gallery_walls[params[:gallery_wall].to_i]
    @added_artwork = UserSelection.create(artwork: @artwork, gallery_wall: @gallery_wall, x_position: 0, y_position: 0, width: params[:width], height: params[:height])
    @galleries = GalleryWall.where(user: @user)
    render json: @galleries
  end



  def show
    @user = User.find(params[:id])
    render json: @user
  end
end
