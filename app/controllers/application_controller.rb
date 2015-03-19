
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  before_filter :require_login

  def current_user
    @current_user ||= User.find(session[:uid]) if session[:uid]
  end

  private
    def require_login
      unless current_user
        redirect_to login_url
      end
    end

end