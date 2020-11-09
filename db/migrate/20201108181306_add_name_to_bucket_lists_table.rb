class AddNameToBucketListsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :bucket_lists, :name, :string
  end
end
