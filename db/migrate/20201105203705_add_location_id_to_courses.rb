class AddLocationIdToCourses < ActiveRecord::Migration[6.0]
  def change
      add_column :courses, :location_id, :integer
  end
end
