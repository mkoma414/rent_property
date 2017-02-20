class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.string :property_name
      t.integer :fee
      t.string :address
      t.integer :building_age
      t.text :remarks

      t.timestamps
    end
  end
end
