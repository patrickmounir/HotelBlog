class UsersController < ApplicationController
  def signup

  end
  def create
    render plain: params[:user].inspect
  end
end
