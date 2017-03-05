class UsersController < ApplicationController
  def signup

  end
  def create
    @user  = User.create(user_params)
    if @user.save
      render json: @user.to_json(except: [:password,:created_at,:updated_at,:verified])
    else
      render json: @user.errors.messages
  end
end
  def user_params
    params.require(:user).permit(:first_name, :last_name,:email,:password)
  end
end
