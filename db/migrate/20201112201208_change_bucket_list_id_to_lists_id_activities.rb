class ChangeBucketListIdToListsIdActivities < ActiveRecord::Migration[6.0]
  def change
    rename_column :activities, :bucket_list_id, :list_id
  end
end
