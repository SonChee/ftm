class UsersController < ApplicationController
  before_action :signed_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update]

  def create
    @user = User.new user_params
    if @user.save
      sign_in @user
      flash[:success]= "Welcome aboard!"
      redirect_to @user
    else
      flash[:fail] = "Sorry did not work!"
      render root_path
    end
  end

  def index
    @users = User.paginate page: params[:page]
  end

  def show
    @user = User.find params[:id]
  end

  def new

  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    if @user.update_attributes user_params
      flash[:success] ="The update was succefully!"
      sign_in @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find params[:id].destroy
    flash[:sucess]= "User destroyed"
    redirect_to admin_supervisors_url
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