class Rebase < ActiveRecord::Migration
  def change

  	create_table "invoices", force: :cascade do |t|
  	  t.timestamps null: false
  	  t.boolean	"payed"
  	  t.string "comment"
  	end

  	create_table "orders", force: :cascade do |t|
  	  t.timestamps null: false
  	  t.integer  "quantity"
  	  t.float    "discount"
  	  t.integer  "invoice_id"
  	  t.integer  "sellable_id"
  	end

  	add_index "orders", ["invoice_id"], name: "index_orders_on_invoice_id"
  	add_index "orders", ["sellable_id"], name: "index_orders_on_sellable_id"

  	create_table "prices", force: :cascade do |t|
  	  t.timestamps null: false
  	  t.float    "innovation_center"
  	  t.float    "permanencier"
  	  t.float    "non_commercial"
  	  t.float    "commercial"
  	  t.integer  "sellable_id"
  	end

  	add_index "prices", ["sellable_id"], name: "index_prices_on_sellable_id"

  	create_table "sellable_types", force: :cascade do |t|
  	  t.timestamps null: false
  	  t.string   "name"
  	end

  	create_table "sellables", force: :cascade do |t|
  	  t.timestamps null: false
  	  t.string   "unit"
  	  t.string   "name"
  	  t.string   "description"
  	  t.integer  "stock"
  	  t.integer  "sellable_type_id"
  	end

  	add_index "sellables", ["sellable_type_id"], name: "index_sellables_on_sellable_type_id"

  	create_table "users", force: :cascade do |t|
  	  t.timestamps null: false
  	  t.string   "username",   default: "", null: false
  	  t.string   "cn",         default: "", null: false
  	  t.string   "email",      default: "", null: false
  	end

  	add_index "users", ["username"], name: "index_users_on_username", unique: true
  end
end