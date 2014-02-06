class SubjectsController < ApplicationController
  def index
    @subjects = Subject.all
  end
  
  def new
    @subject = Subject.new
  end
  
  def create
    @subject = Subject.new subject_params
    if @subject.save
      flash.now[:success] = "Created subject"
      redirect_to root_path
    else
      redirect_to root_path
    end
  end
  
  def show
    @subject = Subject.find params[:id]
    @tasks = @subject.tasks
    @task = @subject.tasks.build
  end

  def edit
    @subject = Subject.find params[:id]
  end
  
  def update
    @subject = Subject.find params[:id]
    if !@subject.nil?
      if @subject.update_attributes subject_params
        flash.now[:success] = "Updated Subject"
        redirect_to @subject
      else
        render :edit
      end
    else
      render root_path
    end
  end
  
  def destroy
    subject = Subject.find params[:id] 
    if !subject.nil?
      if subject.destroy
        flash[:notice] = "Success destroyed"
      else
        flash[:notice] = "Destroy Failed"
      end
        redirect_to subjects_path
    else
      redirect_to root_path
    end
  end
  
  private
  def subject_params
    params.require(:subject).permit(:name, :description)
  end
  
end
