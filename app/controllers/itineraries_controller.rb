class ItinerariesController < ApplicationController
  before_action :check_if_logged_in
  def index
    @itineraries = @current_user.itineraries
  end

  def new
    @itinerary = Itinerary.new
  end

  def show
    @itinerary = Itinerary.find params[:id]
  end

  def create
    params[:itinerary][:user_id] = @current_user.id
    itinerary = Itinerary.create itinerary_params
    redirect_to itineraries_path
  end

  def edit
    # @itinerary = Itinerary.find params[:id]
  end

  def update

  end

  def destroy

  end

  private
  def itinerary_params
    params.require(:itinerary).permit(:itinerary_name, :user_id)
  end
end
