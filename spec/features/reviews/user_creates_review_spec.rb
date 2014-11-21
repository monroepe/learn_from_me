require "rails_helper"

feature "Create review" do
  scenario "user creates review succesfully" do
    course = FactoryGirl.create(:course)
    sign_in_as(course.user)

    visit new_course_review_path(course)
    select(5, from: "Rating")
    fill_in "Body", with: "Great course"
    click_on "Submit"

    expect(page).to have_content "Review created successfully!"
  end

  scenario "user fails to creates review succesfully - blank" do
    course = FactoryGirl.create(:course)
    sign_in_as(course.user)

    visit new_course_review_path(course)
    click_on "Submit"

    expect(page).to have_content "can't be blank"
  end

  scenario "user fails to creates review succesfully - blank rating" do
    course = FactoryGirl.create(:course)
    sign_in_as(course.user)

    visit new_course_review_path(course)
    fill_in "Body", with: "Great course"
    click_on "Submit"

    expect(page).to have_content "Rating can't be blank"
  end

  scenario "user fails to creates review succesfully - blank body" do
    course = FactoryGirl.create(:course)
    sign_in_as(course.user)

    visit new_course_review_path(course)
    select(5, from: "Rating")
    click_on "Submit"

    expect(page).to have_content "Body can't be blank"
  end
end
