FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "jon#{n}@doe.com" }
    sequence(:first_name) { |n| "jon#{n}nny" }
    sequence(:last_name) { |n| "do#{n}oe" }
    password "password123"
  end
end
