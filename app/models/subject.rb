class Subject < ActiveRecord::Base
  has_many :courses

  validates :name, presence: true
  validates :name, uniqueness: true
end
