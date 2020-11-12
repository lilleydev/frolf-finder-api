class ListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :items, :location_id, :courses
  # has_many :courses, serializer: CourseSerializer
end
