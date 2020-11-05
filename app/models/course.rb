class Course < ApplicationRecord
  belongs_to :bucket_list
  has_many :comments
end
