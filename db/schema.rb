# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151128153257) do

  create_table "invoices", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "quantite"
    t.float    "reduction"
    t.integer  "invoice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "orders", ["invoice_id"], name: "index_orders_on_invoice_id"

  create_table "sellable_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sellables", force: :cascade do |t|
    t.string   "unit"
    t.string   "name"
    t.string   "description"
    t.integer  "stock"
    t.float    "price_per_unit_CI"
    t.float    "price_per_unit_permanencier"
    t.float    "price_per_unit_nc"
    t.float    "price_per_unit_c"
    t.integer  "sellable_type_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "sellables", ["sellable_type_id"], name: "index_sellables_on_sellable_type_id"

end
