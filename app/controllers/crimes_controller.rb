class CrimesController < ApplicationController
  before_action :set_crime, only: %i[show edit update destroy]

  def show
  end

  def index
    @crimes = Crime.all
  end

  def new
    @crime = Crime.new
  end

  def create
    @crime = Crime.new(crime_params)
    if @crime.save
      flash[:notice] = "The crime was registered successfully."
      redirect_to @crime
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @crime.update(crime_params)
      flash[:notice] = "crime information updated successfully."
      redirect_to @crime
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
    @crime.destroy
    redirect_to crimes_path
    flash[:alert] = "the crime was deleted."
  end

  private

  def set_crime
    @crime = Crime.find(params[:id])
  end

  def crime_params
    params.require(:crime).permit(:description, :priority, :locality_id, :crime_reporter_id)
  end
end
