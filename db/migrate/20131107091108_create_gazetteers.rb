class CreateGazetteers < ActiveRecord::Migration
  def change
    create_table :gazetteers do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps

      t.timestamps
    end
  end
end
