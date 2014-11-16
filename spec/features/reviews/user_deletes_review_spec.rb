require "rails_helper"

feature "Delete review" do
  scenario "user deletes review succesfully" do
    review = FactoryGirl.create(:review)
    sign_in_as(review.user)

    visit course_path(review.reviewable)
    click_on "Delete Review"

    expect(page).to have_content "Review deleted successfully!"
  end
end
