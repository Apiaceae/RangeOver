class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :title
      t.text :description
      t.datetime :start_at
      t.datetime :end_at
      t.integer :member
      
      t.attachment :geotag

      t.timestamps
    end
  end
end
