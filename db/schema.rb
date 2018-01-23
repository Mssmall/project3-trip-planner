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

ActiveRecord::Schema.define(version: 20180123004245) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "budgets", force: :cascade do |t|
    t.integer "cost"
    t.text "budget_item"
    t.integer "user_id"
    t.integer "itinerary_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.text "name"
    t.text "language"
    t.text "attraction"
    t.string "link"
    t.text "recommendation"
    t.integer "country_id"
    t.integer "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities_lists", id: false, force: :cascade do |t|
    t.integer "city_id"
    t.integer "list_id"
  end

  create_table "countries", force: :cascade do |t|
    t.text "name"
    t.text "currency"
    t.text "known_for"
    t.string "link"
    t.text "recommendation"
    t.text "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries_lists", id: false, force: :cascade do |t|
    t.integer "country_id"
    t.integer "list_id"
  end

  create_table "days", force: :cascade do |t|
    t.string "date"
    t.string "entry"
    t.text "destination"
    t.integer "itinerary_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "itineraries", force: :cascade do |t|
    t.string "day"
    t.string "date"
    t.string "entry"
    t.text "destination"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "itinerary_name"
  end

  create_table "lists", force: :cascade do |t|
    t.text "name"
    t.text "item"
    t.integer "checkbox"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.text "name"
    t.float "latitude"
    t.float "longitude"
    t.boolean "visited"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "country"
  end

  create_table "notes", force: :cascade do |t|
    t.text "heading"
    t.text "note"
    t.date "date"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.text "name"
    t.integer "list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.string "password_digest"
    t.text "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
