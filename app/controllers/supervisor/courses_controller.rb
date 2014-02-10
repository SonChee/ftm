class Supervisor::CoursesController < ApplicationController

  def index
    @courses = Course.paginate page: params[:page], per_page: 5
  end

  def new
    @course = Course.new
  end

  def edit

  end

  def show
    @course = Course.find params[:id]

    @course_subjects= @course.course_subjects
    @assignments = @course.assignments
  end

  def update

  end

  def destroy
    course = Course.find params[:id]

    if !course.nil?
      if course.destroy
        flash[:notice] = "Success destroyed"
      else
        flash[:notice] = "Destroy Failed"
      end
      redirect_to supervisor_courses_path
    else
      redirect_to root_path
    end
  end

end
