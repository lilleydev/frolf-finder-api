class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username
  has_many :bucket_lists
end
