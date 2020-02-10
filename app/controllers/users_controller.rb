class UsersController < ApplicationController

  def index
    users = User.all 
    render json: users
  end

  def login
    user = User.find_or_create_by(name: params[:name], tier: params[:tier])

    render json: user
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)

    render json: user
  end


  private

  def user_params
    params.permit(:name, :tier)
  end

end
