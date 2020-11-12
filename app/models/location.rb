class Location < ApplicationRecord
  has_many :courses
  has_many :lists
end
