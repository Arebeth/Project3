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

ActiveRecord::Schema.define(version: 20150415050127) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pets", force: :cascade do |t|
    t.string   "name"
    t.string   "birthday"
    t.string   "microchip_number"
    t.string   "microchip_company"
    t.string   "microchip_company_website"
    t.string   "microchip_company_phone"
    t.string   "microchip_registration_number"
    t.string   "county_registration_number"
    t.string   "county_registration_contact"
    t.string   "county_registration_expiration"
    t.string   "rabies_vaccination_number"
    t.string   "rabies_expiration"
    t.string   "size"
    t.string   "weight"
    t.string   "color"
    t.string   "care_instructions"
    t.string   "special_needs"
    t.string   "temperament"
    t.string   "historical_information"
    t.string   "type"
    t.string   "breed"
    t.string   "gender"
    t.string   "altered"
    t.string   "photos"
    t.string   "records"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "user_id"
    t.string   "photo"
    t.string   "vet_records"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "vet_name"
    t.string   "vet_number"
    t.string   "vet_address"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "photo"
  end

end
