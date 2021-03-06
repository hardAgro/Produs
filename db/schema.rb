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

ActiveRecord::Schema.define(version: 2018_12_09_171201) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "concentrations", force: :cascade do |t|
    t.bigint "element_id"
    t.decimal "value"
    t.boolean "acceptable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "measurement_id"
    t.index ["element_id"], name: "index_concentrations_on_element_id"
    t.index ["measurement_id"], name: "index_concentrations_on_measurement_id"
  end

  create_table "dris", force: :cascade do |t|
    t.bigint "element_id"
    t.decimal "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "measurement_id"
    t.index ["element_id"], name: "index_dris_on_element_id"
    t.index ["measurement_id"], name: "index_dris_on_measurement_id"
  end

  create_table "elements", force: :cascade do |t|
    t.string "name"
    t.decimal "slope"
    t.decimal "intersection"
    t.decimal "error"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "upper_limit"
    t.decimal "inferior_limit"
  end

  create_table "measurements", force: :cascade do |t|
    t.decimal "ibn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "situations", force: :cascade do |t|
    t.bigint "plant_id"
    t.float "spectrum"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_situations_on_plant_id"
  end

  create_table "users", id: :integer, default: nil, force: :cascade do |t|
    t.string "name", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.boolean "active", default: true
    t.boolean "manager", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "concentrations", "elements"
  add_foreign_key "concentrations", "measurements"
  add_foreign_key "dris", "elements"
  add_foreign_key "dris", "measurements"
  add_foreign_key "situations", "plants"
end
