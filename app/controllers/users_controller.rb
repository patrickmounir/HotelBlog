class UsersController < ApplicationController
  def login
    @user = User.where(email: params[:user][:email], password: params[:user][:password]).first()
  puts @user
    redirect_to hotels_path

  end
  def logpage
  end

  def signup

  end
  def verify
    @user = User.find(params[:id])
    unless @user.verified
      @user.update(verified: true)
      if @user.save
        render json: @user.to_json(except: [:password,:created_at,:updated_at,:verified])
      else
        render json: @user.errors.messages
      end
    end
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
