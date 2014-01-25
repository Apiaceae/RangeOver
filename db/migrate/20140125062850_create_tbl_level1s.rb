class CreateTblLevel1s < ActiveRecord::Migration
  def change
    create_table :tbl_level1s do |t|
      t.string :continent
      t.text :description

      t.timestamps
    end
  end
end
