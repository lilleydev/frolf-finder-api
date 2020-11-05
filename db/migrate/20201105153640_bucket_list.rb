class BucketList < ActiveRecord::Migration[6.0]
  def change
    create_table :bucket_list do |t|
      t.string :item
      t.integer :user_id
      

      t.timestamps
    end 
  end
end
