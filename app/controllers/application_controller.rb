
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :user_info

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def user_info
    info = session[:info]
    @user_info = info["info"]
    pp @user_info
  end
end