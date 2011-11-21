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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111121013656) do

  create_table "domain_i18ns", :force => true do |t|
    t.integer "domain_id"
    t.integer "language_id"
    t.string  "name"
  end

  create_table "domains", :force => true do |t|
    t.string "code"
    t.string "name"
  end

  create_table "language_i18ns", :force => true do |t|
    t.integer "language_id"
    t.integer "reflanguage_id"
    t.string  "name"
  end

  create_table "languages", :force => true do |t|
    t.string "ISOcode"
    t.string "name"
  end

  create_table "repos", :force => true do |t|
    t.string   "name"
    t.integer  "owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "repos", ["owner_id"], :name => "index_repos_on_owner_id"

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
