class User < ActiveRecord::Base
  has_many :courses, dependent: :destroy
  has_many :reviews, as: :reviewable, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
