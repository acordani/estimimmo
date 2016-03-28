class AddAddressToFlat < ActiveRecord::Migration
  def change
    add_column :flats, :address, :string
  end
end
