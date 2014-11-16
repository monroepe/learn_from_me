require "rails_helper"

feature "Create course" do
  scenario "user creates course succesfully" do
    subject = FactoryGirl.create(:subject)
    level = FactoryGirl.create(:level)
    user = FactoryGirl.create(:user)
    sign_in_as(user)

    visit new_course_path
    fill_in "Name", with: "Speaking Russian"
    select(subject.name, from: "Subject")
    select(level.name, from: "Level")
    fill_in "Price", with: 0
    fill_in "Description", with: "Russian language course with focus on speaking"
    click_on "Create Course"

    expect(page).to have_content "Course created successfully!"
  end

  scenario "user fails to creates course succesfully - blank" do
    user = FactoryGirl.create(:user)
    sign_in_as(user)

    visit new_course_path
    click_on "Create Course"

    expect(page).to have_content "can't be blank"
  end

  scenario "user fails to creates course succesfully - no name" do
    subject = FactoryGirl.create(:subject)
    level = FactoryGirl.create(:level)
    user = FactoryGirl.create(:user)
    sign_in_as(user)

    visit new_course_path
    select(subject.name, from: "Subject")
    select(level.name, from: "Level")
    fill_in "Price", with: 0
    fill_in "Description", with: "Russian language course with focus on speaking"
    click_on "Create Course"

    expect(page).to have_content "Name can't be blank"
  end

  scenario "user fails to creates course succesfully - no subject" do
    level = FactoryGirl.create(:level)
    user = FactoryGirl.create(:user)
    sign_in_as(user)

    visit new_course_path
    fill_in "Name", with: "Speaking Russian"
    select(level.name, from: "Level")
    fill_in "Price", with: 0
    fill_in "Description", with: "Russian language course with focus on speaking"
    click_on "Create Course"

    expect(page).to have_content "Subject can't be blank"
  end

  scenario "user fails to creates course succesfully - level blank" do
    subject = FactoryGirl.create(:subject)
    user = FactoryGirl.create(:user)
    sign_in_as(user)

    visit new_course_path
    fill_in "Name", with: "Speaking Russian"
    select(subject.name, from: "Subject")
    fill_in "Price", with: 0
    fill_in "Description", with: "Russian language course with focus on speaking"
    click_on "Create Course"

    expect(page).to have_content "Level can't be blank"
  end

  scenario "user fails to creates course succesfully - price blank" do
    subject = FactoryGirl.create(:subject)
    level = FactoryGirl.create(:level)
    user = FactoryGirl.create(:user)
    sign_in_as(user)

    visit new_course_path
    fill_in "Name", with: "Speaking Russian"
    select(subject.name, from: "Subject")
    select(level.name, from: "Level")
    fill_in "Description", with: "Russian language course with focus on speaking"
    click_on "Create Course"

    expect(page).to have_content "Price can't be blank"
  end

  scenario "user fails to creates course succesfully - description blank" do
    subject = FactoryGirl.create(:subject)
    level = FactoryGirl.create(:level)
    user = FactoryGirl.create(:user)
    sign_in_as(user)

    visit new_course_path
    fill_in "Name", with: "Speaking Russian"
    select(subject.name, from: "Subject")
    select(level.name, from: "Level")
    fill_in "Price", with: 0
    click_on "Create Course"

    expect(page).to have_content "Description can't be blank"
  end
end
