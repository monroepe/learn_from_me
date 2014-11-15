class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def new
    @reviewable = find_reviewable
    @review = Review.new
  end

  def create
    @reviewable = find_reviewable
    @review = @reviewable.reviews.build(review_params)
    @review.user = current_user

    if @review.save
      redirect_to @reviewable, notice: "Review created successfully"
    else
      render "new"
    end
  end

  def edit
    @reviewable = find_reviewable
    @review = Review.find(params[:id])
  end

  def update
    @reviewable = find_reviewable
    @review = Review.find(params[:id])

    if @review.update(review_params)
      redirect_to @reviewable, notice: "Review updated successfully"
    else
      render "edit"
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @reviewable = find_reviewable

    @review.destroy

    redirect_to @reviewable, notice: "Review deleted successfully!"
  end

  private

  def review_params
    params.require(:review).permit(:rating, :body)
  end

  def find_reviewable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end

end
