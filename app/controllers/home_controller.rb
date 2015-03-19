class HomeController < ApplicationController
  def index
    if current_user
      @title = "Dashboard"
      @description = ""
      
      @users = User.last(8).reverse

      render 'homepage'
      return
    end
    render 'index'
  end
end
