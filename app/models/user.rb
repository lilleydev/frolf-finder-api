class User < ApplicationRecord
  belongs_to :hometown, class_name: "Location"
  has_many :comments
  has_many :bucket_lists
end
