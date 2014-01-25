class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :uniqueid
      t.string :herbarium
      t.string :accession
      t.string :barcode
      t.string :collector
      t.string :collnumber
      t.string :colldate
      t.string :country
      t.string :province
      t.string :county
      t.string :locality
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
