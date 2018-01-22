class DaysController < ApplicationController
  def index
    @days = Day.all
  end

  def new
    @day = Day.new
  end

  def edit
    @day = Day.find params[:id]
  end

  def show
    @day = Day.find params[:id]
  end

  def create

  end

  def update

  end

  def destroy

  end
end
