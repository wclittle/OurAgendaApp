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

ActiveRecord::Schema.define(version: 20130616224813) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_items", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "meeting_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "action_items", ["meeting_id"], name: "index_action_items_on_meeting_id", using: :btree
  add_index "action_items", ["user_id"], name: "index_action_items_on_user_id", using: :btree

  create_table "agenda_items", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "meeting_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "agenda_items", ["meeting_id"], name: "index_agenda_items_on_meeting_id", using: :btree
  add_index "agenda_items", ["user_id"], name: "index_agenda_items_on_user_id", using: :btree

  create_table "comments", force: true do |t|
    t.text     "body"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meetings", force: true do |t|
    t.datetime "starts_on"
    t.datetime "ends_on"
    t.string   "name"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meetings_users", force: true do |t|
    t.integer "meeting_id"
    t.integer "user_id"
  end

  add_index "meetings_users", ["meeting_id", "user_id"], name: "index_meetings_users_on_meeting_id_and_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
