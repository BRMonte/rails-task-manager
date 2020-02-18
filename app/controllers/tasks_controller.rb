class TasksController < ApplicationController

  def index
    @task = task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new
    @task.save
  end

  def edit
    @task = Task.find(params[:id])
  end

  def uptade
    @task = Task.find(params[:id])
    @task.update
  end

  def destroy
    @task.destroy
  end

end

private

def task_params
  params.require(:task).permit(:title, :detail, :completed)
end
