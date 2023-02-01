class CrimeReportersController < ApplicationController
  before_action :set_crime_reporter, only: %i[show edit update destroy]

  def show
  end

  def index
    @crime_reporters = CrimeReporter.all
  end

  def new
    @crime_reporter = CrimeReporter.new
  end

  def create
    @crime_reporter = CrimeReporter.new(crime_reporter_params)
    if @crime_reporter.save
      flash[:notice] = "Successfully registered new crime reporter."
      redirect_to @crime_reporter
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @crime_reporter.update(crime_reporter_params)
      flash[:notice] = "#{@crime_reporter.reporter} information updated successfully."
      redirect_to @crime_reporter
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
    @crime_reporter.destroy
    redirect_to crime_reporters_path
    flash[:alert] = "#{@crime_reporter.reporter} information was deleted."
  end

  private

  def set_crime_reporter
    @crime_reporter = CrimeReporter.find(params[:id])
  end

  def crime_reporter_params
    params.require(:crime_reporter).permit(:reporter)
  end
end
