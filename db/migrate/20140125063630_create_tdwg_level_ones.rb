class CreateTdwgLevelOnes < ActiveRecord::Migration
  def change
    create_table :tdwg_level_ones do |t|
      t.string :continent
      t.text :description

      t.timestamps
    end
  end
end
