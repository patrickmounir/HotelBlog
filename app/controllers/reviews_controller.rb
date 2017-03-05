class ReviewsController < ApplicationController
  def new
    @user = User.find(params[:user_id])

  end
  def create
    @user  = User.find(params[:user_id])
    @hotel = Hotel.find(params[:hotel_id])
    @review = @user.reviews.create(review_params)
    @hotel.reviews << @review

    if @review.save
      render json: @review
    else
      render json: @review.errors.messages
  end
end
  def review_params
    params.require(:review).permit(:message, :rating)
  end
end
