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
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])

    if @course.update(course_params)
      redirect_to course_path(@course), notice: "Course updated successfully!"
    else
      render "edit"
    end
  end

  def destroy
    @course = Course.find(params[:id])

    @course.destroy

    redirect_to subjects_path, notice: "Course deleted successfully!"
  end

  private

  def course_params
    params.require(:course).permit(:name, :subject_id, :start_date, :duration, :level_id, :price, :description)
  end
end
