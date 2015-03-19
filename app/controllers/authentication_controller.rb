class AuthenticationController < ApplicationController
  skip_before_filter :require_login

  def login
    if(current_user)
      redirect_to root_path
    end
  end

  def logout
    reset_session
    redirect_to root_path
  end

  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:uid] = user.id

    redirect_to root_path
  end
end
