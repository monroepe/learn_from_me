FactoryGirl.define do
  factory :review do
    rating "4"
    body "Great course!"
    association :reviewable, factory: :course
    user
  end
end
