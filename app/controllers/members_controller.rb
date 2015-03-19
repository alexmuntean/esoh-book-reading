class MembersController < ApplicationController
  def list
    @users = User.all().order("id DESC")
  end

  def details
    @user = User.find(params[:id])
    @title = @user.first_name
    @description = @user.full_name
  end


end
