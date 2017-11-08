class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    restaurantN = Restaurant.find(params[:restaurant_id])
    @review.restaurant = restaurantN
    @review.save
    redirect_to restaurant_path(restaurantN)

    # if
    # else
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
