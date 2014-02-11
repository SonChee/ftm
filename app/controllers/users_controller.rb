class UsersController < ApplicationController
    before_action :signed_in_user, only: [:index, :edit, :update]
  before_action :correct_user, only: [:edit, :update]
  
  def index
    @users = User.paginate page: params[:page]
  end

  def show
    @user = User.find params[:id]
  end

  def new

  end
  
  def create
    
  end

  def edit
    @user = User.find params[:id]
  end

  def destroy
    user = User.find params[:id] 
    if !user.nil?
      if user.destroy
        flash[:notice] = "Success destroyed"
      else
        flash[:notice] = "Destroy Failed"
      end
        redirect_to users_path
    else
      redirect_to root_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :profile)
  end

  def correct_user
    @user = User.find params[:id]
    redirect_to root_path unless current_user? @user
  end

end