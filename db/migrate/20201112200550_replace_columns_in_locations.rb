class ReplaceColumnsInLocations < ActiveRecord::Migration[6.0]
  def change
    remove_column :locations, :city, :string
    remove_column :locations, :state, :string
    add_column :locations, :metropolis, :string 
  end
end
