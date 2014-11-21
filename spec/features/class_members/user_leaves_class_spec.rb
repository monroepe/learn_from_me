require "rails_helper"

feature "Leave class" do
  scenario "user enrolls in class succesfully" do
    class_member = FactoryGirl.create(:class_member)
    sign_in_as(class_member.user)

    visit course_path(class_member.course)
    click_on "Leave Class"

    expect(page).to have_content "Class left successfully!"
  end
end
