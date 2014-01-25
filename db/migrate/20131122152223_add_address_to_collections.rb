class AddAddressToCollections < ActiveRecord::Migration
  def change
    add_column :collections, :address, :string
  end
end
