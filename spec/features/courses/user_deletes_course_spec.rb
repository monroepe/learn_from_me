require "rails_helper"

feature "Delete course" do
  scenario "user deletes course succesfully" do
    course = FactoryGirl.create(:course)
    sign_in_as(course.user)

    visit course_path(course)
    click_on "Delete Course"

    expect(page).to have_content "Course deleted successfully!"
  end
end
