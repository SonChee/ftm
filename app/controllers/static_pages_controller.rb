class StaticPagesController < ApplicationController
  def index
  end
  def home
  	  # TODO cousre is a temp to test first.
      @course = Course.find(2)
      @assignments = @course.assignments
  end
end
