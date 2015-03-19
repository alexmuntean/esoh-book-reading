class HomeController < ApplicationController
  def login

  end

  def index
    @title = "Dashboard"
    @description = ""

    @users = User.last(8)
  end
end
