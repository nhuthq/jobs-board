# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_04_03_081529) do
  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "level"
    t.string "job_type"
    t.string "location"
    t.string "job_author"
    t.boolean "remoteable"
    t.string "apply_url"
    t.boolean "is_published"
    t.datetime "published_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "organization_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.string "images"
    t.string "slogan"
    t.string "address"
    t.string "country"
    t.string "tax_code"
    t.boolean "ot_policy"
    t.string "description"
    t.string "landing_page"
    t.string "company_type"
    t.string "company_size"
    t.string "working_days"
    t.string "profile_image"
    t.string "short_description"
    t.datetime "published_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
