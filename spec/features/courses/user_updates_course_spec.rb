require "rails_helper"

feature "Update course" do
  scenario "user updates course succesfully" do
    subject = FactoryGirl.create(:subject)
    level = FactoryGirl.create(:level)
    course = FactoryGirl.create(:course)
    sign_in_as(course.user)

    visit edit_course_path(course)
    fill_in "Name", with: "Speaking Russian"
    select(subject.name, from: "Subject")
    select(level.name, from: "Level")
    fill_in "Price", with: 0
    fill_in "Description", with: "Russian language course with focus on speaking"
    click_on "Update Course"

    expect(page).to have_content "Course updated successfully!"
  end

  scenario "user fails to updates course succesfully - blank name" do
    course = FactoryGirl.create(:course)
    sign_in_as(course.user)

    visit edit_course_path(course)
    fill_in "Name", with: ""
    click_on "Update Course"

    expect(page).to have_content "Name can't be blank"
  end

  scenario "user fails to updates course succesfully - price blank" do
    course = FactoryGirl.create(:course)
    sign_in_as(course.user)

    visit edit_course_path(course)
    fill_in "Price", with: ""
    click_on "Update Course"

    expect(page).to have_content "Price can't be blank"
  end

  scenario "user fails to updates course succesfully - description blank" do
    course = FactoryGirl.create(:course)
    sign_in_as(course.user)

    visit edit_course_path(course)
    fill_in "Description", with: ""
    click_on "Update Course"

    expect(page).to have_content "Description can't be blank"
  end
end
