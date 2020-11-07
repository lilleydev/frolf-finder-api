class Api::V1::SessionsController < ApplicationController
  def create
    # binding.pry
      @user = User.find_by(username: params[:session][:username])
    if @user 
      # add bcrypt to be able to authenticate
      session[:user_id] = @user.id
      render json: @user
    else
      render json: { error: "Invalid Credentials"}
    end 
  end
end
