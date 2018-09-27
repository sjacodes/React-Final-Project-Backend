class UsersController < ApplicationController


  def login
    @user= User.find_or_create_by(name: params[:name])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render json: @user.errors
    end
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

  private

    def user_params
      params.permit(:name, :email)
    end
end
