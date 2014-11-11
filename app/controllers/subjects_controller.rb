class SubjectsController < ApplicationController
  def index
    @subjects = Subject.order(:name)
  end

  def show
    @subject = Subject.find(params[:id])
    @courses = @subject.courses
  end

  private

  def subject_params
    params.require(:subject).permit(:name)
  end
end
