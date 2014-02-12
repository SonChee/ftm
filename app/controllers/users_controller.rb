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
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      
      redirect_to @user
    else
      render new_supervisor_trainee_path
    end
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
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
    redirect_to root_path unless(current_user? @user or suppervisor_user? current_user )
  end

end