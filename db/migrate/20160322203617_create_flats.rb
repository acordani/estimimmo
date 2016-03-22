class CreateFlats < ActiveRecord::Migration
  def change
    create_table :flats do |t|
      t.string :first_name
      t.string :last_name
      t.integer :surface_land
      t.integer :surface_habitation
      t.integer :common_wall
      t.integer :rooms
      t.integer :bedroom
      t.integer :bathroom
      t.integer :surface_carrez
      t.integer :year_construction

      t.timestamps null: false
    end
  end
end
