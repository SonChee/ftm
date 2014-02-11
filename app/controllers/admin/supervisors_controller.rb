class Admin::SupervisorsController < ApplicationController
  before_action :signed_in_user, only: [:index, :new, :create]
  before_action :admin_user, only: [:index, :new, :create]

  def index
    @supervisors = User.supervisors
  end

  def new
    @supervisor = User.supervisors.new
  end
  
  def create
    @supervisor = User.supervisors.new supervisor_params
    @supervisor.permission = 2
    if @supervisor.save
      flash[:success]= "Welcome aboard!"
      redirect_to admin_supervisors_path
    else
      flash[:notice] = "Sorry did not work!"
      redirect_to root_path
    end
  end

  private 
  def supervisor_params
    params.require(:supervisor).permit(:name, :email, :profile, :password, 
                                 :password_confirmation)
  end
  
  def admin_user
    redirect_to root_path unless admin_user? current_user
  end
end
