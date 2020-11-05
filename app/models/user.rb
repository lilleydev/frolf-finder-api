class User < ApplicationRecord
  belongs_to :hometown, class_name: "Location"
end
