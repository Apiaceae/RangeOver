class CreateEventsGazetteers < ActiveRecord::Migration
  def change
    create_table :events_gazetteers, :id => false do |t|
      t.references :event
      t.references :gazetteer
    end
  end
  def self.down
    drop_table :events_gazetteers
  end
end
