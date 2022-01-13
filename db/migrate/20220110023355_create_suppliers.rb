class CreateSuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :suppliers do |t|
      t.string :supplier_code
      t.string :name

      t.timestamps
    end
  end
end
