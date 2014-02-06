class TasksController < ApplicationController
  
  # TODO before_action :supervisor_user, only: [:create, :destroy]
  
  def create
    @task = Task.new task_params
    if @task.save
      flash[:success] = "Created Task!"
      redirect_to @task.subject
    else
      redirect_to root_path
    end
  end
  
  def show
    @task = Task.find params[:id]
  end
  
  def destroy
    task = Task.find params[:id]
    if !task.nil?
      if task.destroy
        flash[:notice] = "Success destroyed"
      else
        flash[:notice] = "Destroy Failed"
      end
      redirect_to task.subject
    else
      redirect root_path
    end
  end
  
  def edit
    @task = Task.find params[:id]
  end
  
  def update
    @task = Task.find params[:id]
    if !@task.nil?
      if @task.update_attributes task_params
        flash.now[:success] = "Updated Subject"
        redirect_to @task.subject
      else
        render :edit
      end
    else
      render root_path
    end    
  end
  
  private
  def task_params
    params.require(:task).permit(:name, :subject_id, :description)
  end
  
end