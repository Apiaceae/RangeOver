class CreateTdwgLevelTwos < ActiveRecord::Migration
  def change
    create_table :tdwg_level_twos do |t|
      t.string :region
      t.text :description
      t.integer :tdwg_level_one_id

      t.timestamps
    end
  end
end
