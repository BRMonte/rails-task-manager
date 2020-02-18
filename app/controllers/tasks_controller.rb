class TasksController < ApplicationController

  def index
    @tasks = Task.all #@taskS because it is an array of tasks objects
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:id])
    @task.save
  end

  def edit
    @task = Task.find(params[:id])
  end

  def uptade
    @task = Task.find(params[:id])
    @task.update(params[:id])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end

end

private

def task_params
  params.require(:task).permit(:title, :details, :completed)
end
