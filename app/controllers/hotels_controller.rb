class HotelsController < ApplicationController
  def index
    @hotels = Hotel.all
  end
  def show
    @user = User.find(9)
    @hotel =  Hotel.includes([:services,:reviews]).find(params[:id])
  end
end
