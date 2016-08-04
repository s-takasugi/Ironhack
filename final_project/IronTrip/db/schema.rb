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

ActiveRecord::Schema.define(version: 20160804164802) do

  create_table "events", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.string   "location"
    t.string   "date"
    t.string   "image"
    t.string   "api_id"
    t.string   "city_name"
  end

  create_table "events_trip_planners", force: :cascade do |t|
    t.integer "trip_planner_id"
    t.integer "event_id"
    t.index ["event_id"], name: "index_events_trip_planners_on_event_id"
    t.index ["trip_planner_id"], name: "index_events_trip_planners_on_trip_planner_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "day"
    t.integer  "time"
    t.integer  "trip_planner_id"
    t.integer  "venue_id"
    t.integer  "event_id"
    t.index ["event_id"], name: "index_schedules_on_event_id"
    t.index ["trip_planner_id"], name: "index_schedules_on_trip_planner_id"
    t.index ["venue_id"], name: "index_schedules_on_venue_id"
  end

  create_table "trip_planners", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date     "start_date"
  end

  create_table "trip_planners_venues", force: :cascade do |t|
    t.integer "trip_planner_id"
    t.integer "venue_id"
    t.index ["trip_planner_id"], name: "index_trip_planners_venues_on_trip_planner_id"
    t.index ["venue_id"], name: "index_trip_planners_venues_on_venue_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "venues", force: :cascade do |t|
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "name"
    t.string   "address"
    t.string   "category"
    t.string   "image"
    t.string   "city"
    t.string   "api_id"
    t.integer  "scheduled_trip_planner_id"
    t.index ["scheduled_trip_planner_id"], name: "index_venues_on_scheduled_trip_planner_id"
  end

end
