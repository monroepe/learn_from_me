require "rails_helper"

feature "Enroll in class" do
  scenario "user enrolls in class succesfully" do
    course = FactoryGirl.create(:course)
    user = FactoryGirl.create(:user)
    sign_in_as(user)

    visit new_course_class_member_path(course)
    fill_in "Qualifications", with: "I am qualified"
    click_on "Submit"

    expect(page).to have_content "Class joined successfully!"
  end

  scenario "user fails to enroll succesfully - blank qualifications" do
    course = FactoryGirl.create(:course)
    user = FactoryGirl.create(:user)
    sign_in_as(user)

    visit new_course_class_member_path(course)
    click_on "Submit"

    expect(page).to have_content "can't be blank"
  end
end
