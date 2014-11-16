FactoryGirl.define do
  factory :level do
    sequence(:name) { |n| "this#{n}level" }
  end
end
