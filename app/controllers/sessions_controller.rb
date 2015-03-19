class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:uid] = user.id

    redirect_to root_path
  end

  def destroy
    session[:uid] = nil
    
    redirect_to root_path
  end
end