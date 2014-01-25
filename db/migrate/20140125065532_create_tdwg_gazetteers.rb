class CreateTdwgGazetteers < ActiveRecord::Migration
  def change
    create_table :tdwg_gazetteers do |t|
      t.string :gazetteer
      t.text :description
      t.integer :tdwg_level_four_id
      t.string :kew_region
      t.string :kew_region_code
      t.string :kew_region_subdivison
      t.string :synonym

      t.timestamps
    end
  end
end
