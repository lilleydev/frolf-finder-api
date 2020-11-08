class BucketlistSerializer
  include FastJsonapi::ObjectSerializer
  attributes :items, :location_id
  # has_many :courses, serializer: CourseSerializer
end
