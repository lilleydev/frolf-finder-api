class Course < ApplicationRecord
  has_many :activities
  belongs_to :location
  has_many :comments
end
