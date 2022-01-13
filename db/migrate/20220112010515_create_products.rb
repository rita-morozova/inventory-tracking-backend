class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.integer :UPC
      t.string :SKU
      t.integer :QTY
      t.string :weight
      t.string :dimensions
      t.string :flammable
      t.string :supplier

      t.timestamps
    end
  end
end
