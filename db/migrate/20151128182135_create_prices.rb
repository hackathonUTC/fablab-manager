class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.float :innovation_center
      t.float :permanencier
      t.float :non_commercial
      t.float :commercial
      t.references :sellable, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
