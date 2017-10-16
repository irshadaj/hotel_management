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

ActiveRecord::Schema.define(version: 20171013200216) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "credit_name"
    t.bigint   "credit_num"
    t.string   "credit_exp"
    t.integer  "credit_cvv"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.date     "joined"
    t.datetime "last_login"
    t.datetime "last_logout"
    t.float    "hours_current"
    t.float    "hours_total"
    t.integer  "role_level"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "password"
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.text     "desc"
    t.float    "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "reservations_id"
    t.integer  "items_id"
    t.integer  "cost"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "quantity"
    t.index ["items_id"], name: "index_orders_on_items_id", using: :btree
    t.index ["reservations_id"], name: "index_orders_on_reservations_id", using: :btree
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "customers_id"
    t.integer  "room"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.float    "bill"
    t.index ["customers_id"], name: "index_reservations_on_customers_id", using: :btree
  end

end
