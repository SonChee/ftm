class Supervisor::AssignmentsController < ApplicationController
  def new
    @assignment = Assignment.new
    @course = Course.find params[:course_id]
    @supervisors = []
    User.supervisors.each do |supervisor|
      @supervisors << supervisor unless !Assignment.find_by(course_id: @course.id, user_id: supervisor.id).nil?
    end
  end
  
  def create
    params[:supervisor_ids].each do |supervisor_id|
      @assignment = Assignment.new(user_id: supervisor_id, course_id: params[:course_id], status_id: 1)
      if @assignment.save
        redirect_to supervisor_courses_path
      else
        redirect_to root_path
      end      
    end
  end
    
end