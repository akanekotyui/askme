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

ActiveRecord::Schema.define(version: 20170824103910) do

  create_table "advises", force: :cascade do |t|
    t.string "en"
    t.string "jp"
    t.string "zh"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "answers", force: :cascade do |t|
    t.integer "code"
    t.string "en"
    t.string "jp"
    t.string "zh"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "question_part_ones", force: :cascade do |t|
    t.string "en"
    t.string "jp"
    t.string "zh"
    t.integer "q2_code"
    t.string "remark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "code"
    t.string "tab_type"
    t.string "type"
  end

  create_table "question_part_twos", force: :cascade do |t|
    t.integer "code"
    t.string "en"
    t.string "jp"
    t.string "zh"
    t.integer "a_code"
    t.string "remark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "words", force: :cascade do |t|
    t.string "en"
    t.string "jp"
    t.string "zh"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
