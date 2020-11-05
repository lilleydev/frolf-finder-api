class Activity < ApplicationRecord
  belongs_to :bucket_lists
  belongs_to :courses
end
