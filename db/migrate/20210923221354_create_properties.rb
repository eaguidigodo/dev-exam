class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.references :property_list, foreign_key: true
      t.string :line
      t.string :station_name
      t.integer :minute

      t.timestamps
    end
  end
end
