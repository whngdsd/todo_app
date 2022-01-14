class TasksController < ApplicationController
  before_action :authenticate_user
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(
      name: params[:name],
      scheduled_on: params[:scheduled_on]
    )
    if @task.save
      redirect_to("/tasks/index")
    else
      render("tasks/new")
    end
  end

  #def edit
    
  #end


  #def update
   # @task = Task.find(params[:id])
   # @task.update(task_params)
  #end


  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to("/tasks/index")
  end

  private
    def task_params
      params.require(:task).permit(:name, :scheduled_on,done_on)
    end

end
