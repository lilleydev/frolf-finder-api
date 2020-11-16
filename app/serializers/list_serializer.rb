class ListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :start_date, :end_date
  # has_many :courses, serializer: CourseSerializer
end
