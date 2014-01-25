class CreateTdwgLevelThrees < ActiveRecord::Migration
  def change
    create_table :tdwg_level_threes do |t|
      t.string :area
      t.text :description
      t.integer :tdwg_level_two_id
      t.string :code
      t.string :iso_code

      t.timestamps
    end
  end
end
