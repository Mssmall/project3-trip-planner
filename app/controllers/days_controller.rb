class DaysController < ApplicationController
  before_action :check_if_logged_in
  def index
    @days = Day.all
  end

  def new
    @day = Day.new
  end

  def edit

  end

  def show
    @day = Day.find params[:id]
  end

  def create
    @itinerary = Itinerary.find(params[:day][:itinerary_id])
    @day = @itinerary.days.create(day_params)
    if @day.save
      redirect_back fallback_location: lists_path
    else
      flash.now[:danger] = "error"
    end

  end

  def update

  end

  def destroy
    day = Day.find params[:id]
    day.destroy
    redirect_to itineraries_path
  end

  private
  def day_params
    params.require(:day).permit(:date, :destination, :entry, :itinerary_id)
  end
end
