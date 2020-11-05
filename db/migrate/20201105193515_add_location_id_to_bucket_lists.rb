class AddLocationIdToBucketLists < ActiveRecord::Migration[6.0]
  def change
    add_column :bucket_lists, :location_id, :integer
  end
end
