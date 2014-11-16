FactoryGirl.define do
  factory :course do
    sequence(:name) { |n| "this#{n}course" }
    price "0"
    description "A great course where you will learn"
    level
    subject
    user
  end
end
