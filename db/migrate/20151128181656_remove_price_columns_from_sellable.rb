class RemovePriceColumnsFromSellable < ActiveRecord::Migration
  def change
    remove_column :sellables, :price_per_unit_c
    remove_column :sellables, :price_per_unit_CI
    remove_column :sellables, :price_per_unit_nc
    remove_column :sellables, :price_per_unit_permanencier
  end
end
