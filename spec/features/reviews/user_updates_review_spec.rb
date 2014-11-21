require "rails_helper"

feature "Update review" do
  scenario "user update review succesfully" do
    review = FactoryGirl.create(:review)
    sign_in_as(review.user)

    visit edit_course_review_path(review.reviewable, review)
    select(5, from: "Rating")
    fill_in "Body", with: "Great course"
    click_on "Submit"

    expect(page).to have_content "Review updated successfully!"
  end

  scenario "user fails to update review succesfully - blank body" do
    review = FactoryGirl.create(:review)
    sign_in_as(review.user)

    visit edit_course_review_path(review.reviewable, review)
    fill_in "Body", with: ""
    click_on "Submit"

    expect(page).to have_content "Body can't be blank"
  end
end
