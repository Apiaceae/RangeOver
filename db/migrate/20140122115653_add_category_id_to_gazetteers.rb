class AddCategoryIdToGazetteers < ActiveRecord::Migration
  def change
    add_column :gazetteers, :category_id, :integer
  end
end
