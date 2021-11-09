# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_08_134040) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "brands", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "landing_view", default: false
    t.index ["name"], name: "index_brands_on_name", unique: true
  end

  create_table "car_model_requests", force: :cascade do |t|
    t.string "email", null: false
    t.string "brand", null: false
    t.string "model", null: false
    t.integer "annual_distance", null: false
    t.integer "contract_time", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.text "comment"
    t.string "phone_number"
  end

  create_table "cars", force: :cascade do |t|
    t.bigint "model_id", null: false
    t.integer "shift"
    t.integer "fuel"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "traction", default: 0
    t.string "version_name"
    t.integer "row_seats", default: 2
    t.integer "airbags"
    t.date "last_valid_date_prices"
    t.index ["model_id"], name: "index_cars_on_model_id"
  end

  create_table "characteristics", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "category"
    t.index ["name", "category"], name: "index_characteristics_on_name_and_category", unique: true
  end

  create_table "characteristings", force: :cascade do |t|
    t.string "characteristical_type", null: false
    t.bigint "characteristical_id", null: false
    t.bigint "characteristic_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["characteristic_id"], name: "index_characteristings_on_characteristic_id"
    t.index ["characteristical_type", "characteristical_id"], name: "index_characteristics_on_characteristical"
  end

  create_table "data_migrations", primary_key: "version", id: :string, force: :cascade do |t|
  end

  create_table "documents", force: :cascade do |t|
    t.string "documentable_type", null: false
    t.bigint "documentable_id", null: false
    t.jsonb "document_data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["documentable_type", "documentable_id"], name: "index_documents_on_documentable_type_and_documentable_id"
  end

  create_table "frequent_questions", force: :cascade do |t|
    t.text "question", null: false
    t.text "answer", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "category"
  end

  create_table "images", force: :cascade do |t|
    t.string "imagable_type", null: false
    t.bigint "imagable_id", null: false
    t.jsonb "image_data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "main_model_image", default: false
    t.index ["imagable_type", "imagable_id"], name: "index_images_on_imagable_type_and_imagable_id"
  end

  create_table "models", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "brand_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "car_type"
    t.boolean "active", default: true
    t.boolean "prioritized_display", default: false
    t.index ["brand_id"], name: "index_models_on_brand_id"
    t.index ["name"], name: "index_models_on_name", unique: true
  end

  create_table "price_versions", force: :cascade do |t|
    t.bigint "car_id", null: false
    t.bigint "monthly_price_cents", default: 0, null: false
    t.string "monthly_price_currency", default: "CLP", null: false
    t.integer "annual_distance", null: false
    t.integer "contract_time", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_id", "annual_distance", "contract_time"], name: "index_price_versions_on_car_and_distance_and_time", unique: true
    t.index ["car_id"], name: "index_price_versions_on_car_id"
  end

  create_table "reservation_requests", force: :cascade do |t|
    t.bigint "car_id", null: false
    t.string "email", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "contact_number"
    t.integer "kind"
    t.string "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "price_version_id"
    t.index ["car_id"], name: "index_reservation_requests_on_car_id"
    t.index ["price_version_id"], name: "index_reservation_requests_on_price_version_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "cars", "models"
  add_foreign_key "characteristings", "characteristics"
  add_foreign_key "models", "brands"
  add_foreign_key "price_versions", "cars"
  add_foreign_key "reservation_requests", "cars"
  add_foreign_key "reservation_requests", "price_versions"
end
