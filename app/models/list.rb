class List < ApplicationRecord
  belongs_to :user
  has_many :activities
  has_many :courses, through: :activities
  belongs_to :location
end
