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

ActiveRecord::Schema.define(version: 20180114223330) do

  create_table "grant_submissions", force: :cascade do |t|
    t.integer  "grant_id",      limit: 4
    t.integer  "submission_id", limit: 4
    t.string   "status",        limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "grants", force: :cascade do |t|
    t.string   "title",                limit: 255
    t.decimal  "total_amount",                     precision: 10
    t.datetime "submissions_open_at"
    t.datetime "submissions_close_at"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.decimal  "submission_min",                   precision: 10
    t.decimal  "submission_max",                   precision: 10
  end

  create_table "seed_migration_data_migrations", force: :cascade do |t|
    t.string   "version",     limit: 255
    t.integer  "runtime",     limit: 4
    t.datetime "migrated_on"
  end

# Could not dump table "submissions" because of following StandardError
#   Unknown type 'json' for column 'data'

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "name",                   limit: 255
    t.integer  "role",                   limit: 4
    t.string   "artist_name",            limit: 100
    t.string   "contact_name",           limit: 100
    t.string   "phone_number",           limit: 20
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
