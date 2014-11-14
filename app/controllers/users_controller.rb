class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def show
    @user = User.find(params[:id])
    @courses = @user.courses.includes(:subject)
  end
end
