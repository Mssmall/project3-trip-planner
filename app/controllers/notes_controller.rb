class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def new
    @note = Note.new
  end

  def show
    
  end

  def edit

  end

  def create

  end

  def update

  end

  def destroy

  end
end
