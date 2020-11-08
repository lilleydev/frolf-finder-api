class Api::V1::SessionsController < ApplicationController
  def create
    # binding.pry
      @user = User.find_by(username: params[:session][:username])
    if @user 
      # add bcrypt to be able to authenticate
      session[:user_id] = @user.id
      render json: UserSerializer.new(@user)
    else
      render json: { error: "Invalid Credentials"}
    end 
  end

  def get_current_user
    if logged_in?
      render json: UserSerializer.new(current_user)
    else
      render json: { error: "No one logged in"}
    end 
  end 
# user_json = UserSerializer.new(@user).serialized_json

#     render json: user_json
  def destroy 
    session.clear 
    render json: { notice: "sucessfully logged out"}, status: :ok
  end 
end
