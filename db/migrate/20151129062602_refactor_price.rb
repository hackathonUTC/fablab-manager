class RefactorPrice < ActiveRecord::Migration
  def change
    remove_column :prices, :innovation_center, :float
    remove_column :prices, :permanencier, :float
    remove_column :prices, :non_commercial, :float
    remove_column :prices, :commercial, :float

    add_column :prices, :price_type_id, :integer, index: true
    add_column :prices, :value, :float
    add_column :price_types, :display, :boolean, null: false, default: false
    add_foreign_key :prices, :price_types
  end
end
