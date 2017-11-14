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

ActiveRecord::Schema.define(version: 20171114043108) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "case_owners", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "issue_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "address1"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.string "district"
    t.decimal "latitude", precision: 10, scale: 6
    t.decimal "longitude", precision: 10, scale: 6
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_requests", force: :cascade do |t|
    t.string "ticket_id"
    t.bigint "issue_type_id"
    t.bigint "case_owner_id"
    t.bigint "location_id"
    t.datetime "closed_at"
    t.integer "status"
    t.integer "method_received"
    t.integer "goal_days"
    t.integer "actual_completed_days"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["case_owner_id"], name: "index_service_requests_on_case_owner_id"
    t.index ["issue_type_id"], name: "index_service_requests_on_issue_type_id"
    t.index ["location_id"], name: "index_service_requests_on_location_id"
  end

  add_foreign_key "service_requests", "case_owners"
  add_foreign_key "service_requests", "issue_types"
  add_foreign_key "service_requests", "locations"
end
