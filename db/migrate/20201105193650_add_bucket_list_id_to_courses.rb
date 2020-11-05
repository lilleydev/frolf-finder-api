class AddBucketListIdToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :bucket_list_id, :integer

  end
end
