class ListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :start_date, :end_date, :location_id, :courses
  # has_many :courses, serializer: CourseSerializer
end
