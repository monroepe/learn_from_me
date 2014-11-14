class Course < ActiveRecord::Base
  belongs_to :subject
  belongs_to :user
  belongs_to :level
  has_many :reviews, as: :reviewable

  validates :name, :subject_id, :user_id, :level_id, :price, :description, presence: true
  validates :name, uniqueness: true
end
