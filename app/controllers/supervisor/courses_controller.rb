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
    @course = Course.find params[:id]
    @course.destroy

    rescue ActiveRecord::RecordNotFound

    respond_to do |format|
      format.html { redirect_to supervisor_courses_path}
      format.json { head :no_content }
    end
  end

end
