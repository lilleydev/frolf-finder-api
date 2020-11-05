class DropBucketListTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :bucket_list
  end
end
