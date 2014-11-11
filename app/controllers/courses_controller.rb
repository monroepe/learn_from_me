class CoursesController < ApplicationController
  def index

  end

  def show

  end

  def new

  end


  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def course_params
    params.require(:course).permit(:name, :subject_id, :start_date, :duration, :level_id, :price, :description)
  end
end
