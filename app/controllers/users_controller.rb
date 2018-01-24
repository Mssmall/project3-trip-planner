class UsersController < ApplicationController
  before_action :check_if_logged_in, :only => [:edit, :index]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find params[:id]
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      @user.lists.create :name => 'Favourites List'
      # list = List.create :name => 'Default List'
      # @user.lists << list
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    redirect_to root_path unless @current_user.id == params[:id].to_i
    @user = User.find params[:id]
  end

  def update
    user = User.find params[:id]
    user.update user_params
    user.save
    redirect_to user_path unless @current_user.id == params[:id].to_i
    @user = User.find params[:id]
  end

  def destroy
    user = User.find params[:id]
    user.destroy
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
