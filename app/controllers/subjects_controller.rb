class SubjectsController < ApplicationController
  def index
    @subjects = Subject.all
  end

  def show
    @subject = Subject.find(params[:id])
    @courses = @subject.courses.page(params[:page])
  end
end
