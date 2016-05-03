class CreateComparatives < ActiveRecord::Migration
  def change
    create_table :comparatives do |t|
      t.string :adress
      t.string :latitude
      t.string :longitude
      t.string :surface
      t.string :price

      t.timestamps null: false
    end
  end
end
