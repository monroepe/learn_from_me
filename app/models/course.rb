class Course < ActiveRecord::Base
  belongs_to :subject
  belongs_to :user
  belongs_to :level
  has_many :reviews, as: :reviewable, dependent: :destroy
  has_many :class_members, dependent: :destroy

  validates :name, :subject_id, :user_id, :level_id, :price, :description, presence: true
  validates :name, uniqueness: true

  def self.search(search)
    if search
      where("name ILIKE?", "%#{search}%")
    else
      all
    end
  end
end
