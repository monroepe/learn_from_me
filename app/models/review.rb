class Review < ActiveRecord::Base
  belongs_to :reviewable, polymorphic: true
  belongs_to :user

  validates :rating, :body, presence: true
  validates :rating,
            numericality:
            {
              greater_than_or_equal_to: 1,
              less_than_or_equal_to: 5,
              only_integer: true
            }
end
