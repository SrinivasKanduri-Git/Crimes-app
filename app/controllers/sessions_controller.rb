class SessionsController < ApplicationController
  def new
  end

  def create
    batman = Batman.find_by(username: params[:session][:username])
    if batman && batman.authenticate(params[:session][:password])
      session[:batman_id]=batman.id
      flash[:notice] = "Login successful!"
      redirect_to root_path
    else
      flash.now[:alert] = "username or password is incorrect"
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    session[:batman_id] = nil
    flash[:notice] = "logged out successfully."
    redirect_to root_path
  end
end
