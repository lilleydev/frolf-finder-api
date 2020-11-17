class CourseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :street, :city, :state, :difficulty, :mixed_use_park
  # has_many :activities
  # belongs_to :location
  # has_many :comments
end
