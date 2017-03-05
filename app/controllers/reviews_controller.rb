class ReviewsController < ApplicationController
  def new
    @user = current_user

  end
  def create
    @user  = current_user
    @hotel = Hotel.find(params[:hotel_id])
    @review = @user.reviews.create(review_params.merge({last_name:@user.last_name,first_name: @user.first_name}))
    @hotel.reviews << @review

    if @review.save
      redirect_to hotel_path(@hotel)
    else
      render json: @review.errors.messages
  end
end
  def review_params
    params.require(:review).permit(:message, :rating)
  end
end
