class Location < ApplicationRecord
  has_many :residents, foreign_key: :hometown_id
  has_many :courses
end
