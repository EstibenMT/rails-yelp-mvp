class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: [:show, :edit, :uodate, :destroy]

  def new
    @restaurants = Restaurant.new
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def update
    @resta
  end

  def destroy

  end

  private

  def restaurant_params

  end


end
