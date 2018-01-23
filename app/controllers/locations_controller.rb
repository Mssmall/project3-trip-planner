class LocationsController < ApplicationController
  protect_from_forgery :except => [:create]
  before_action :check_if_logged_in
  def index

  end

  def new

  end

  def show

  end

  def create
    location = @current_user.locations.create(
      :latitude => params[:latitude],
      :longitude => params[:longitude],
      :country => params[:country]
    )
    render :json => location
  end

  def edit

  end

  def update

  end

  def destroy

  end
end
