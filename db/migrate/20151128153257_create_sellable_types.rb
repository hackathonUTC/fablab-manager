class CreateSellableTypes < ActiveRecord::Migration
  def change
    create_table :sellable_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
