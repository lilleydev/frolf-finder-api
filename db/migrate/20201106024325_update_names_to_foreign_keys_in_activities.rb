class UpdateNamesToForeignKeysInActivities < ActiveRecord::Migration[6.0]
  def change
    remove_column :activities, :bucket_lists_id, :bigint
    remove_column :activities, :courses_id, :bigint
  end
end

