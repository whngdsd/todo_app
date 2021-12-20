class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(
      name: params[:name],
      scheduled_on: params[:scheduled_on]
      #user_id: @current_user.id
    )
    if @task.save
      redirect_to("/tasks/index")
    else
      render("tasks/index")
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to("/tasks/index")
  end


end
