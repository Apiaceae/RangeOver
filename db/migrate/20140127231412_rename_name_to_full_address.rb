class RenameNameToFullAddress < ActiveRecord::Migration
  def change
    rename_column :gazetteers, :name, :full_address
  end
end
