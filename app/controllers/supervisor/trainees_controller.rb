class Supervisor::TraineesController < ApplicationController
  def index

  end

  def show

  end

  def new
  	@user = User.new
  end

  def create

  end



  def edit
  	@trainee = User.find params[:id]
  end

private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :profile)
  end
end