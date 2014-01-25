class AddUserIdToGazetteers < ActiveRecord::Migration
  def change
    add_column :gazetteers, :user_id, :integer
  end
end
