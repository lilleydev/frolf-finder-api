class RemoveForeignKeyFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :destination_id, :integer
  end
end
