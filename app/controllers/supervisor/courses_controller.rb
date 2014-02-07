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
    end

    def update

    end

end
