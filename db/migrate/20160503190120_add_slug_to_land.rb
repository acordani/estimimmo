class AddSlugToLand < ActiveRecord::Migration
  def change
    add_column :lands, :slug, :string
    add_index :lands, :slug, unique: true
  end
end
