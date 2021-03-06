class LocationsController < ApplicationController
  protect_from_forgery :except => [:create, :update, :destroy]
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
    location = Location.find params[:id]
    location.update :visited => params[:visited]
    render :json => location
  end

  def destroy
    location = Location.find params[:id]
    location.destroy
    render :json => {status: 'okay'}
  end
end
