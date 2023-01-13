# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_01_13_163450) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "building_reviews", force: :cascade do |t|
    t.text "content"
    t.bigint "building_id", null: false
    t.bigint "user_id", null: false
    t.decimal "living_duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_building_reviews_on_building_id"
    t.index ["user_id"], name: "index_building_reviews_on_user_id"
  end

  create_table "building_stations", force: :cascade do |t|
    t.bigint "building_id", null: false
    t.bigint "station_id", null: false
    t.integer "distance"
    t.bigint "travel_method_id", null: false
    t.integer "travel_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_building_stations_on_building_id"
    t.index ["station_id"], name: "index_building_stations_on_station_id"
    t.index ["travel_method_id"], name: "index_building_stations_on_travel_method_id"
  end

  create_table "buildings", force: :cascade do |t|
    t.string "building_url"
    t.string "building_name"
    t.integer "mng_fee"
    t.integer "built_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "city_ward_districts", force: :cascade do |t|
    t.string "name"
    t.string "name_jpn"
    t.bigint "prefecture_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prefecture_id"], name: "index_city_ward_districts_on_prefecture_id"
  end

  create_table "prefectures", force: :cascade do |t|
    t.string "name"
    t.string "name_jpn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string "name"
    t.string "name_jpn"
    t.string "postal_code"
    t.bigint "city_ward_district_id", null: false
    t.string "area_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_ward_district_id"], name: "index_stations_on_city_ward_district_id"
  end

  create_table "travel_methods", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_name"
    t.string "jti", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "building_reviews", "buildings"
  add_foreign_key "building_reviews", "users"
  add_foreign_key "building_stations", "buildings"
  add_foreign_key "building_stations", "stations"
  add_foreign_key "building_stations", "travel_methods"
  add_foreign_key "city_ward_districts", "prefectures"
  add_foreign_key "stations", "city_ward_districts"
end
