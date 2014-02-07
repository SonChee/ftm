class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by email: params[:session][:email].downcase

    if user && user.authenticate(params[:session][:password])
      sign_in user

      if user.permission == 3
        redirect_to admin_supervisors_url
      end

      if user.permission == 2
        redirect_to supervisor_trainees_url
      end
      if user.permission == 1
        redirect_to users_url
      end

    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url, notice: "Logged out!"
  end
end
