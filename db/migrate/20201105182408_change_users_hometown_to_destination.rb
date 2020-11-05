class ChangeUsersHometownToDestination < ActiveRecord::Migration[6.0]
  def change
    change_table :users do |t|
      t.remove :hometown_id
      t.integer :destination_id
    end
  end
end
