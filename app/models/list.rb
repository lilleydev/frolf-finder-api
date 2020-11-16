class List < ApplicationRecord
  belongs_to :user
  has_many :activities
  has_many :courses, through: :activities
  # belongs_to :location

  # validates :name, :start_date, :end_date, :description, presence: true
  #  validates :name, :user, :start_date, :end_date, presence: true
end
