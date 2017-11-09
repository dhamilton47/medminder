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

ActiveRecord::Schema.define(version: 20171106225204) do

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prescriptions", force: :cascade do |t|
    t.integer "patient_id"
    t.integer "provider_id"
    t.integer "supplier_id"
    t.boolean "active", default: false
    t.string "rx_number", null: false
    t.string "name", null: false
    t.string "dosage", null: false
    t.string "taken_how", null: false
    t.integer "quantity", null: false
    t.date "written_date", null: false
    t.date "script_good_til_date", null: false
    t.date "fill_date", null: false
    t.date "medication_expiration_date"
    t.string "manufacturer"
    t.text "purpose"
    t.integer "remaining_refills", default: 0
    t.boolean "generic", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["active"], name: "index_prescriptions_on_active"
    t.index ["patient_id"], name: "index_prescriptions_on_patient_id"
    t.index ["provider_id"], name: "index_prescriptions_on_provider_id"
    t.index ["supplier_id"], name: "index_prescriptions_on_supplier_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
