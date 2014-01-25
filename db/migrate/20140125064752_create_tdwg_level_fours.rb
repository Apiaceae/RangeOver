class CreateTdwgLevelFours < ActiveRecord::Migration
  def change
    create_table :tdwg_level_fours do |t|
      t.string :country
      t.text :description
      t.integer :tdwg_level_three_id
      t.string :code
      t.string :iso_code

      t.timestamps
    end
  end
end
