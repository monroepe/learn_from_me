FactoryGirl.define do
  factory :class_member do
    qualifications "I am qualified for this course"
    course
    user
  end
end
