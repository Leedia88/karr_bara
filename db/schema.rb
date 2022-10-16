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

ActiveRecord::Schema.define(version: 2022_10_15_094347) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cookings", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "days", force: :cascade do |t|
    t.string "address"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drinks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_meals", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "menu_id"
    t.bigint "recipe_id"
    t.bigint "cooking_id"
    t.boolean "dessert"
    t.bigint "drink_id"
    t.string "option"
    t.float "price", default: 0.0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cooking_id"], name: "index_order_meals_on_cooking_id"
    t.index ["drink_id"], name: "index_order_meals_on_drink_id"
    t.index ["menu_id"], name: "index_order_meals_on_menu_id"
    t.index ["order_id"], name: "index_order_meals_on_order_id"
    t.index ["recipe_id"], name: "index_order_meals_on_recipe_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "schedule_id"
    t.string "user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["schedule_id"], name: "index_orders_on_schedule_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.string "slot"
    t.integer "available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "order_meals", "orders"
end
