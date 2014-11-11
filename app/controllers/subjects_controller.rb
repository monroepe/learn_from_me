class SubjectsController < ApplicationController
  def index
    @subjects = Subject.order(:name)
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

  def delete
  end

  private

  def subject_params
    params.require(:subject).permit(:name)
  end
end
