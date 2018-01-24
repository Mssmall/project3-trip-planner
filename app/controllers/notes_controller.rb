class NotesController < ApplicationController
  before_action :check_if_logged_in
  def index
    @notes = @current_user.notes
  end

  def new
    @note = Note.new
  end

  def show
    @note = Note.find params[:id]
  end

  def edit
    redirect_to root_path unless @current_user.id == params[:id].to_i
    @note = Note.find params[:id]
  end

  def create
    params[:note][:user_id] = @current_user.id
    note = Note.create note_params
    redirect_to notes_path
  end

  def update

  end

  def destroy
    note = Note.find params[:id]
    note.destroy
    redirect_to notes_path
  end
end
