class BucketList < ApplicationRecord
  belongs_to :user
  has_many :activities
  belongs_to :location
end
