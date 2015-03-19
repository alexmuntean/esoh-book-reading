class HomeController < ApplicationController
  def dashboard
    @title = "Dashboard"
    @description = ""
    
    @users = User.last(8).reverse
  end

end
