class Course < ApplicationRecord
  has_many :activities
  has_many :bucket_lists, through: :activities
  belongs_to :location
  has_many :comments
end
