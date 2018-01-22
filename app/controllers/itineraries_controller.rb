class ItinerariesController < ApplicationController
  def index
    @itineraries = Itinerary.all
  end

  def new
    @itinerary = Itinerary.new
  end

  def show
    @itinerary = Itinerary.find params[:id]
  end

  def create

  end

  def edit
    @itinerary = Itinerary.find params[:id]
  end

  def update

  end

  def destroy

  end
end
