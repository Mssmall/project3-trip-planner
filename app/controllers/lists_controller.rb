class ListsController < ApplicationController
  before_action :check_if_logged_in
  def index
    @lists = @current_user.lists
  end

  def new
    @list = List.new
  end

  def show
    @list = List.find params[:id]
  end

  def create
    params[:list][:user_id] = @current_user.id
    list = List.create list_params
    redirect_to lists_path
  end

  def edit
    redirect_to root_path unless @current_user.id == params[:id].to_i
    @list = List.find params[:id]
  end

  def update
    
  end

  def destroy
    list = List.find params[:id]
    list.destroy
    redirect_to lists_path
  end

  private
  def list_params
    params.require(:list).permit(:name, :user_id)
  end
end
