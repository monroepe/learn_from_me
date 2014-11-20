class ClassMember < ActiveRecord::Base
  belongs_to :user
  belongs_to :course

  validates :qualifications, presence: true
end
