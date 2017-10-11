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

ActiveRecord::Schema.define(version: 20171011214718) do

  create_table "lessons", force: :cascade do |t|
    t.string "name"
    t.string "desciption"
    t.string "date"
    t.string "start_hour"
    t.string "end_hour"
    t.integer "session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string "topic"
    t.string "organization"
    t.string "subject"
    t.string "audience"
    t.string "activities"
    t.string "material"
    t.string "description"
    t.integer "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "responsables", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.string "date"
    t.string "start_hour"
    t.string "end_hour"
    t.string "location"
    t.integer "responsable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "volunteers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "institution"
    t.string "student_id"
    t.string "career"
    t.string "email"
    t.string "password"
    t.integer "lesson_id"
    t.integer "session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
