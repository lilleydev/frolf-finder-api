class RemoveLocationFromCourses < ActiveRecord::Migration[6.0]
  def change
    remove_column :courses, :location_id, :integer
  end
end