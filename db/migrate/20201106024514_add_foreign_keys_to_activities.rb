class AddForeignKeysToActivities < ActiveRecord::Migration[6.0]
  def change
     add_column :activities, :bucket_list_id, :integer
    add_column :activities, :course_id, :integer
  end
end
