class Location < ApplicationRecord
  has_many :courses, through: :bucket_lists
  belongs_to :bucket_list
end
