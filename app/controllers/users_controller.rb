class UsersController < ApplicationController

  def index

  end

  def new

  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

  def create
    @user = User.new user_params
    if @user.save
      @user.lists.create :name => 'Default List'
      # list = List.create :name => 'Default List'
      # @user.lists << list
    end
  end
end
