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

ActiveRecord::Schema[7.0].define(version: 2022_11_29_234221) do
  create_table "missions", force: :cascade do |t|
    t.string "name"
    t.integer "scientist_id", null: false
    t.integer "planet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["planet_id"], name: "index_missions_on_planet_id"
    t.index ["scientist_id"], name: "index_missions_on_scientist_id"
  end

  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.string "distance_from_earth"
    t.string "nearest_star"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scientists", force: :cascade do |t|
    t.string "name"
    t.string "field_of_study"
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "missions", "planets"
  add_foreign_key "missions", "scientists"
end
