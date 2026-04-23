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

ActiveRecord::Schema[8.1].define(version: 2026_04_23_203102) do
  create_table "match_events", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "event_type"
    t.boolean "highlight"
    t.integer "match_id", null: false
    t.text "notes"
    t.string "player_name"
    t.string "team_side"
    t.integer "timestamp_seconds"
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_match_events_on_match_id"
  end

  create_table "matches", force: :cascade do |t|
    t.string "away_team"
    t.datetime "created_at", null: false
    t.string "home_team"
    t.date "played_on"
    t.string "title"
    t.datetime "updated_at", null: false
    t.string "venue"
  end

  add_foreign_key "match_events", "matches"
end
