class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title
      t.string :description
      
      t.attachment :gpx

      t.timestamps
    end
  end
end
