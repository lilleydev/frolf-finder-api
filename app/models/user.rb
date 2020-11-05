class User < ApplicationRecord
  has_many :courses, through: :bucket_lists
  has_many :comments
  has_many :bucket_lists
end
