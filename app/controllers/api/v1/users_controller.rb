class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show]
  def show
    user_json = UserSerializer.new(@user).serialized_json

    render json: user_json
  end 

  private

  def set_user
    @user = User.find(params[:id])
  end 
end
