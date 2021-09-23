class CreatePropertyLists < ActiveRecord::Migration[5.2]
  def change
    create_table :property_lists do |t|
      t.string :property
      t.string :rent
      t.integer :age
      t.string :address
      t.text :remark

      t.timestamps
    end
  end
end
