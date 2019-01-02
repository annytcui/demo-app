class SessionsController < ApplicationController
  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      # Log in
    else
      flash[:danger] = "Invalid user or password."
      render 'static_pages/home'
    end
  end

  def destroy
  end
end
