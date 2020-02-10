class UsersController < ApplicationController

  def index
    users = User.all 
    render json: users
  end

  def new
    user = User.new
  end

  def create
    user = User.find_or_create_by(email: user_params[:email])
    user.update_attributes(user_params)

    render json: user
  end

  def update
    user = User.find(user_params[:id])
    user.update(user_params)

    render json: user
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
