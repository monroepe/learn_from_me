class CoursesController < ApplicationController
  def index
    @courses =  Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    @course.user_id = 1

    if @course.save
      redirect_to course_path(@course), notice: "Course created successfully!"
    else
      render "new"
    end
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
