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

ActiveRecord::Schema.define(version: 20151122194849) do

  create_table "options", force: :cascade do |t|
    t.integer  "poll_id"
    t.string   "text"
    t.integer  "total_vote"
    t.integer  "num_voted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "options", ["poll_id"], name: "index_options_on_poll_id"

  create_table "polls", force: :cascade do |t|
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "option_id"
    t.integer  "weight"
    t.string   "voter_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "votes", ["option_id"], name: "index_votes_on_option_id"

end
