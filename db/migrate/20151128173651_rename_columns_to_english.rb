class RenameColumnsToEnglish < ActiveRecord::Migration
  def change
    rename_column :orders, :quantite, :quantity
    rename_column :orders, :reduction, :discount
  end
end
