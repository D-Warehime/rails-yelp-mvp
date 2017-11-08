class RestaurantsController < ApplicationController
  before_action :set_rest, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
    @restaurants.each do |rest|
      @reviews = Review.where(restaurant_id: rest.id)
      sum = 0.0
      total = @reviews.count
      @reviews.each do |review|
        sum += review.rating
      end
      @average = sum / total
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def show
    @reviews = Review.where(restaurant_id: @restaurant.id)
    sum = 0.0
    total = @reviews.count
    @reviews.each do |review|
      sum += review.rating
    end
    @average = sum / total
  end

  def edit
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurants_path
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def set_rest
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
