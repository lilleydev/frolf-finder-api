class BucketList < ApplicationRecord
  belongs_to :user
  has_many :courses
  belongs_to :location
end
