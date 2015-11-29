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

ActiveRecord::Schema.define(version: 20151129062602) do

  create_table "invoices", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.boolean  "payed"
    t.string   "comment"
    t.integer  "created_by"
    t.integer  "created_for"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "quantity"
    t.float    "discount"
    t.integer  "invoice_id"
    t.integer  "sellable_id"
  end

  add_index "orders", ["invoice_id"], name: "index_orders_on_invoice_id"
  add_index "orders", ["sellable_id"], name: "index_orders_on_sellable_id"

  create_table "price_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "display",    default: false, null: false
  end

  create_table "prices", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "sellable_id"
    t.integer  "price_type_id"
    t.float    "value"
  end

  add_index "prices", ["sellable_id"], name: "index_prices_on_sellable_id"

  create_table "sellable_types", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "sellables", force: :cascade do |t|
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "unit"
    t.string   "name"
    t.string   "description"
    t.integer  "stock"
    t.integer  "sellable_type_id"
  end

  add_index "sellables", ["sellable_type_id"], name: "index_sellables_on_sellable_type_id"

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "username",            default: "", null: false
    t.string   "cn",                  default: "", null: false
    t.string   "email",               default: "", null: false
    t.integer  "authorization_level", default: 0,  null: false
  end

  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
