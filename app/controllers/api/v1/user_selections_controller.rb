class Api::V1::UserSelectionsController < ApplicationController
    def index
        @User_selections = UserSelection.all
        render json: @User_selections
      end

    def show
        @user_selection = UserSelection.find(params[:id])
        render json: @user_selection
    end

    def destroy
        @user_selection = UserSelection.find(params[:id])
        @gallery = @user_selection.gallery_wall
        @user = @gallery.user
        @galleries = GalleryWall.where(user: @user)
        @user_selection.destroy
        render json: @galleries
    end

    def move_artwork
        @user = User.find(params[:user_id])
        @user_selection = UserSelection.find(params[:user_selection_id])
        @user_selection.update(x_position: params[:position_x], y_position: params[:position_y])
        @galleries = GalleryWall.where(user: @user)
        render json: @galleries
      end
    
      def resize_artwork
        @user = User.find(params[:user_id])
        @user_selection = UserSelection.find(params[:user_selection_id])
        @user_selection.update(width: params[:width], height: params[:height])
        @galleries = GalleryWall.where(user: @user)
        render json: @galleries
      end
    
end
