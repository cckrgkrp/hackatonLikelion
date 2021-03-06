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

ActiveRecord::Schema.define(version: 20160806050316) do

  create_table "departments", force: :cascade do |t|
    t.string   "departName"
    t.string   "departDesc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lectures", force: :cascade do |t|
    t.string   "lectureName"
    t.integer  "department_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "proflecture_id"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "proffessors", force: :cascade do |t|
    t.string   "proffessorName"
    t.string   "proffessorDesc"
    t.integer  "department_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["department_id"], name: "index_proffessors_on_department_id"
  end

  create_table "proflectures", force: :cascade do |t|
    t.integer  "department_id"
    t.integer  "proffessor_id"
    t.integer  "lecture_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "studentNumber"
    t.string   "password_digest"
    t.integer  "grade"
    t.string   "role"
    t.text     "rtproflecture"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
