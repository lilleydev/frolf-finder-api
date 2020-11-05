class Location < ApplicationRecord
  has_many :courses
  has_many :bucket_lists
end
