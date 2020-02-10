class UsersController < ApplicationController

  def index
    users = User.all 
    render json: users
  end

  def login
    user = User.find_or_create_by(email: params[:email], password: params[:password])

    render json: user
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)

    render json: user
  

  private

  def user_params
    params.permit(:email, :password)
  end

end
