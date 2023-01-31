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

ActiveRecord::Schema[7.0].define(version: 2023_01_31_111357) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  # Custom types defined in this database.
  # Note that some types may not work with other database engines. Be careful if changing database.
  create_enum "priority", ["{:low=>0", " :medium=>1", " :high=>2}"]

  create_table "cities", force: :cascade do |t|
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crime_reporters", force: :cascade do |t|
    t.string "reporter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crimes", force: :cascade do |t|
    t.text "description"
    t.enum "priority", null: false, enum_type: "priority"
    t.boolean "resolved", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "locality_id"
    t.integer "crime_reporter_id"
  end

  create_table "localities", force: :cascade do |t|
    t.string "locality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "city_id"
  end

end
