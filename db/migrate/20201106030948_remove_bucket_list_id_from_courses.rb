class RemoveBucketListIdFromCourses < ActiveRecord::Migration[6.0]
  def change
    remove_column :courses, :bucket_list_id, :integer
  end
end
