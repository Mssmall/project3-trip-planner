class CitiesController < ApplicationController
  before_action :check_if_logged_in
  def index
    @cities = City.all
  end

  def new
    @city = City.new
  end

  def show
    @city = City.find params[:id]

    # country_url = "https://api.thebasetrip.com/v2/countries/:#{params[:country]}"
    # info = HTTParty.get country_url;
    # @capital_city = info['capital'][0]['name']
    # @region = info['location'][0]['region']
    # @language = info['native'][0]['languages']['name']

  end

  def create

  end

  def edit
    @city = City.find params[:id]
  end

  def update

  end

  def destroy

  end

  def lookup

  end

  private

  def city_params
    params.require(:city).permit(:name, :language, :attraction, :country_id)
  end
end
