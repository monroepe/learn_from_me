class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @courses = @user.courses.includes(:subject)
  end
end
