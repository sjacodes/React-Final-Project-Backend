class Api::V1::CaptionsController < ApplicationController
    def index
        @Captions = Caption.all
        render json: @Captions
      end

    def add
        @gallery_wall = GalleryWall.find(params[:gallery_wall_id])
        @user = @gallery_wall.user
        @caption = Caption.create(text: "", gallery_wall: @gallery_wall, x_position: 0, y_position: 0, width: 200, height: 200, rendered: false, title: params[:title])
        @galleries = GalleryWall.where(user: @user)
        render json: @galleries
    end

    def resize
        @caption = Caption.find(params[:caption_id])
        @wall = @caption.gallery_wall
        @user = @wall.user
        @caption.update(width: params[:width], height: params[:height])
        @galleries = GalleryWall.where(user: @user)
        render json: @galleries
    end

    def move
        @caption = Caption.find(params[:caption_id])
        @user = @caption.gallery_wall.user
        @caption.update(x_position: params[:x], y_position: params[:y])
        @galleries = GalleryWall.where(user: @user)
        render json: @galleries
    end

    def edit
        @caption = Caption.find(params[:id])
        @caption.update(text: params[:text], rendered: params[:rendered])
        @user = @caption.gallery_wall.user
        @galleries = GalleryWall.where(user: @user)
        render json: @galleries
    end

    def destroy
        @caption = Caption.find(params[:id])
        @user = @caption.gallery_wall.user
        @caption.destroy
        @galleries = GalleryWall.where(user: @user)
        render json: @galleries
    end
end
