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

ActiveRecord::Schema.define(version: 20170730115250) do

  create_table "activities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.text     "description", limit: 65535
    t.integer  "category_id"
    t.integer  "offering_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["category_id"], name: "index_activities_on_category_id", using: :btree
    t.index ["offering_id"], name: "index_activities_on_offering_id", using: :btree
  end

  create_table "activities_categories", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "activity_id"
    t.integer "category_id"
    t.index ["activity_id"], name: "index_activities_categories_on_activity_id", using: :btree
    t.index ["category_id"], name: "index_activities_categories_on_category_id", using: :btree
  end

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "offerings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "description",      limit: 65535
    t.string   "place"
    t.string   "pricingperperson"
    t.text     "inclusions",       limit: 65535
    t.text     "exclusions",       limit: 65535
    t.integer  "provider_id"
    t.integer  "activity_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["activity_id"], name: "index_offerings_on_activity_id", using: :btree
    t.index ["provider_id"], name: "index_offerings_on_provider_id", using: :btree
  end

  create_table "providers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "email_1"
    t.string   "email_2"
    t.integer  "phone_1"
    t.integer  "phone_2"
    t.integer  "tax_number"
    t.integer  "street_number"
    t.string   "street_name_1"
    t.string   "city"
    t.string   "province"
    t.string   "country"
    t.string   "website"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "reservations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "offering"
    t.datetime "booking_date"
    t.time     "start_time"
    t.time     "end_time"
    t.string   "status"
    t.integer  "trip_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["trip_id"], name: "index_reservations_on_trip_id", using: :btree
  end

  create_table "trips", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.string   "user_id"
    t.integer  "number_of_adults"
    t.integer  "number_of_infants"
    t.integer  "number_of_children"
    t.string   "city"
    t.string   "country"
    t.string   "region"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "activities", "categories"
  add_foreign_key "activities", "offerings", on_delete: :cascade
  add_foreign_key "reservations", "trips"
end
