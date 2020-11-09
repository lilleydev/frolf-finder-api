class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show]
  
  def create 
    @user = User.new(user_params)
    # binding.pry
    if @user.save
      session[:user_id] = @user.id
      render json: UserSerializer.new(@user)
    else
      render json: @user.errors, status: :unprocessable_entity
    end 
  end 
  
  def show
    user_json = UserSerializer.new(@user).serialized_json

    render json: user_json
  end 

  private

  def set_user
    @user = User.find(params[:id])
  end 

  def user_params 
    params.require(:user).permit(:name, :username, :password)
  end 
end
