class HotelsController < ApplicationController
  def index
    @hotels = Hotel.all
  end
  def show
    @user = current_user
    @hotel =  Hotel.includes([:services,:reviews]).find(params[:id])
    puts @hotel.reviews
  end
end
