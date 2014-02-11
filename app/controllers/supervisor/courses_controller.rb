class Supervisor::CoursesController < ApplicationController

  def index
    @courses = Course.paginate page: params[:page], per_page: 5
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.create course_params
    course_subjects = []
      params[:ids].each do |id|
        course_subject = CourseSubject.new course_id: @course.id, subject_id: id
        course_subjects << course_subject
      end
    @course.course_subjects = course_subjects
    if @course.save
      flash.now[:success]= "Created Courses"
      redirect_to supervisor_courses_path
    else
      redirect_to root_path
    end
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
