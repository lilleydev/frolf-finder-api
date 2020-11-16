class RemoveLocationIdFromLists < ActiveRecord::Migration[6.0]
  def change
    remove_column :lists, :location_id, :integer
  end
end
