class ListsController < ApplicationController
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
  end

  def update

  end

  def destroy

  end

  private
  def list_params
    params.require(:list).permit(:name, :user_id)
  end
end
