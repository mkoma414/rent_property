class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.integer :property_id
      t.string :line_name
      t.string :station_name
      t.integer :walk_minutes

      t.timestamps
    end
  end
end
