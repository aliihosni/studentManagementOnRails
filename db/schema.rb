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

ActiveRecord::Schema.define(version: 20171123181938) do

  create_table "absences", force: :cascade do |t|
    t.integer "status"
    t.string "justif"
    t.date "date"
    t.integer "student_id"
    t.integer "cour_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cour_id"], name: "index_absences_on_cour_id"
    t.index ["student_id"], name: "index_absences_on_student_id"
  end

  create_table "classes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cours", force: :cascade do |t|
    t.string "name"
    t.integer "classe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["classe_id"], name: "index_cours_on_classe_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.integer "classe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["classe_id"], name: "index_students_on_classe_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
