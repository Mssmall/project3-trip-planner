class CountriesController < ApplicationController
  before_action :check_if_logged_in
  def index
    @countries = Country.all
  end

  def new
    @country = Country.new
  end

  def show
    @country = Country.find params[:id]
  end

  def create

  end

  def edit
    @country = Country.find params[:id]
  end

  def update

  end

  def destroy

  end
end
