class SessionsController < ApplicationController
  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to root_path
    else
      flash.now[:danger] = "Invalid user or password."
      render 'static_pages/home'
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
