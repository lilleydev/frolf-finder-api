class User < ApplicationRecord
  has_many :courses, through: :lists
  has_many :comments
  has_many :lists

  # validates :name, :username, :password
  # validates :username, uniqueness: true
end
