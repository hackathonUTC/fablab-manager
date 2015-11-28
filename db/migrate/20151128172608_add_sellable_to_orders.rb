class AddSellableToOrders < ActiveRecord::Migration
  def change
    add_reference :orders, :sellable, index: true, foreign_key: true
  end
end
