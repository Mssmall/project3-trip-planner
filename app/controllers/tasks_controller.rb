class TasksController < ApplicationController
  before_action :check_if_logged_in
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def show
  end

  def create
    @list = List.find(params[:task][:list_id])
    @task = @list.tasks.create(task_params)
    # @task.user_id = @current_user.id
    if @task.save
      redirect_back fallback_location: lists_path
    else
      flash.now[:danger] = "error"
    end

  end

  def update

  end

  def destroy

  end

  private
  def task_params
    params.require(:task).permit(:name, :list_id)
  end
end
