class ChangeItemsToDescriptionAddDatesToLists < ActiveRecord::Migration[6.0]
  def change
    rename_column :lists, :items, :description
    add_column :lists, :start_date, :date
    add_column :lists, :end_date, :date
  end
end
