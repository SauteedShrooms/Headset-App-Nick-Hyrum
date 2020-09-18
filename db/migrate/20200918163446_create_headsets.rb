class CreateHeadsets < ActiveRecord::Migration[6.0]
  def change
    create_table :headsets do |t|
      t.string :name
      t.string :brand
      t.string :color
      t.integer :price

      t.timestamps
    end
  end
end
