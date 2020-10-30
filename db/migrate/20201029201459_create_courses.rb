class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.integer :difficulty
      t.boolean :mixed_use_park

      t.timestamps
    end
  end
end
