class CreateGeolocations < ActiveRecord::Migration
  def change
    create_table :geolocations do |t|
      t.string :title
      t.string :description
      
      t.attachment :location
      t.timestamps
    end
  end
end
