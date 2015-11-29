class AddAuthorizationLevelToUser < ActiveRecord::Migration
  def change
    add_column :users, :authorization_level, :integer, null: false, default: 0
  end
end
