class Level < ActiveRecord::Base
  has_many :courses, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: true
end
