class Course < ApplicationRecord
  belongs_to :bucket_list
  belongs_to :location
  has_many :comments
end
