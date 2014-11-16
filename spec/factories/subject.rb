FactoryGirl.define do
  factory :subject do
    sequence(:name) { |n| "this#{n}subject" }
  end
end
