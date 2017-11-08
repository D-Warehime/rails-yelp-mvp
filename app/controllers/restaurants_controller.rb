class RestaurantsController < ApplicationController
  before_action :set_rest, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
  end

  def show
  end

  def edit
  end

  def update
    @restaurant.update(restaurant_params)
  end

  def destroy
    @restaurant.destroy
  end

  private

  def set_rest
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
