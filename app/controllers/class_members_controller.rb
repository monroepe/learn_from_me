class ClassMembersController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
    @class_member = ClassMember.find(params[:id])
  end

  def new
    @course = Course.find(params[:course_id])
    @class_member = ClassMember.new
  end

  def create
    @course = Course.find(params[:course_id])
    @class_member = @course.class_members.new(class_member_params)
    @class_member.user = current_user

    if @class_member.save
      redirect_to course_path(@course), notice: "Class joined successfully!"
    else
      render "new"
    end
  end

  def destroy
    @course = Course.find(params[:course_id])
    @class_member = ClassMember.where(user: current_user, course: @course).first

    @class_member.destroy

    redirect_to course_path(@course), notice: "Class left successfully!"
  end

  private

  def class_member_params
    params.require(:class_member).permit(:qualifications, :reason_for_joining)
  end
end
