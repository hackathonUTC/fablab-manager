class CreateSellables < ActiveRecord::Migration
  def change
    create_table :sellables do |t|
      t.string :unit
      t.string :name
      t.string :description
      t.integer :stock
      t.float :price_per_unit_CI
      t.float :price_per_unit_permanencier
      t.float :price_per_unit_nc
      t.float :price_per_unit_c
      t.references :sellable_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
