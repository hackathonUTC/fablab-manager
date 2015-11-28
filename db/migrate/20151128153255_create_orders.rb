class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :quantite
      t.float :reduction
      t.references :invoice, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
