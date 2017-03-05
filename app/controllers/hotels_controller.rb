class HotelsController < ApplicationController
  def index
    @hotels = Hotel.all
  end
  def show
    @hotel =  Hotel.includes(:services).find(params[:id])
  end
end
