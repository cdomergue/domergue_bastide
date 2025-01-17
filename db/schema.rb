# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151012113702) do

  create_table "breweries", force: true do |t|
    t.string   "name"
    t.date     "since"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notes", force: true do |t|
    t.integer  "value"
    t.integer  "shot_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "shot_geek_id"
  end

  add_index "notes", ["shot_geek_id"], name: "index_notes_on_shot_geek_id"
  add_index "notes", ["shot_id"], name: "index_notes_on_shot_id"

  create_table "shot_geeks", force: true do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "shot_geeks", ["email"], name: "index_shot_geeks_on_email", unique: true
  add_index "shot_geeks", ["reset_password_token"], name: "index_shot_geeks_on_reset_password_token", unique: true

  create_table "shots", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "brewerie_id"
  end

  add_index "shots", ["brewerie_id"], name: "index_shots_on_brewerie_id"

end
