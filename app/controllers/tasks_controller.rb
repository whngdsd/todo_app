class TasksController < ApplicationController
  before_action :authenticate_user
  
  def index
    @tasks = Task.all.order(scheduled_on: "ASC")
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(
      **task_params,
      user_id: @current_user.id)
    if @task.save
      flash[:notice] = "タスク作成！"
      redirect_to("/tasks/index")
    else
      render("tasks/new")
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    if @task.save
      flash[:notice] = "タスク編集完了！"
      redirect_to("/tasks/index")
    else
      render("tasks/edit")
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to("/tasks/index")
  end

  private

    def task_params
      params.require(:task).permit(:name, :scheduled_on)
    end

end
