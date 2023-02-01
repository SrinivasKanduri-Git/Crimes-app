class CitiesController < ApplicationController
  before_action :set_city, only: %i[show edit update destroy]

  def show
  end

  def index
    @cities = City.all
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(city_params)
    if @city.save
      flash[:notice] = "Successfully added new city."
      redirect_to @city
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @city.update(city_params)
      flash[:notice] = "#{@city.city} information updated successfully."
      redirect_to @city
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
    @city.destroy
    redirect_to cities_path
    flash[:alert] = "#{@city} was deleted."
  end

  private

  def set_city
    @city = City.find(params[:id])
  end

  def city_params
    params.require(:city).permit(:city)
  end
end
