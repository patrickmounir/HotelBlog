class ReviewsController < ApplicationController
  def new
    @user = User.find(params[:user_id])

  end
  def create
    @user  = User.find(params[:user_id])
    @review = @user.reviews.create(review_params)

    if @review.save
      render json: @user.to_json(except: [:password,:created_at,:updated_at,:verified])
    else
      render json: @user.errors.messages
  end
end
  def review_params
    params.require(:review).permit(:message, :ratings)
  end
  end
end
