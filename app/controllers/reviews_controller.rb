class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.new(review_params)
    @review.save
    redirect_to @restaurant # redirect_to restaurant_path(@restaurant)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
