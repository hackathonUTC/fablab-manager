class AddUserReferencesToInvoice < ActiveRecord::Migration
  def change
    add_column :invoices, :created_by, :integer, index: true
    add_column :invoices, :created_for, :integer, index: true

    add_foreign_key :invoices, :users, column: :created_by
    add_foreign_key :invoices, :users, column: :created_for
  end
end
