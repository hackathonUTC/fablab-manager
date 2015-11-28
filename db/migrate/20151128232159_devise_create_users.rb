class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      t.string :username,           null: false, default: ""
      t.string :cn,                 null: false, default: ""
      t.string :email,               null: false, default: ""

      t.timestamps null: false
    end

    add_index :users, :username,            :unique => true
  end
end
