class UsersController < ApplicationController
  def login
    @user = User.where(email: params[:user][:email], password: params[:user][:password]).first()
  session[:current_user_id] = @user[:id]
  puts "Session is in session"
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
        redirect_to hotels_path
      else
        render json: @user.errors.messages
      end
    end
  end
  def create
    @user  = User.create(user_params)
    if @user.save
      redirect_to hotels_path
    else
      render json: @user.errors.messages
  end
end
  def user_params
    params.require(:user).permit(:first_name, :last_name,:email,:password)
  end
end
