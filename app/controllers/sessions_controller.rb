class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    session[:info] = env["omniauth.auth"]

    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    session[:info] = env["omniauth.auth"]
    
    redirect_to root_path
  end
end