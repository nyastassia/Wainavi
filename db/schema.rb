ActiveRecord::Schema[7.1].define(version: 2025_06_11_061211) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "award_wineries", force: :cascade do |t|
    t.bigint "award_id", null: false
    t.bigint "winery_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["award_id"], name: "index_award_wineries_on_award_id"
    t.index ["winery_id"], name: "index_award_wineries_on_winery_id"
  end

  create_table "awards", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dining_wineries", force: :cascade do |t|
    t.bigint "dining_id", null: false
    t.bigint "winery_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dining_id"], name: "index_dining_wineries_on_dining_id"
    t.index ["winery_id"], name: "index_dining_wineries_on_winery_id"
  end

  create_table "dinings", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experience_wineries", force: :cascade do |t|
    t.bigint "experience_id", null: false
    t.bigint "winery_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["experience_id"], name: "index_experience_wineries_on_experience_id"
    t.index ["winery_id"], name: "index_experience_wineries_on_winery_id"
  end

  create_table "experiences", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grape_varieties", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
  end

  create_table "grape_variety_wineries", force: :cascade do |t|
    t.bigint "grape_variety_id", null: false
    t.bigint "winery_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grape_variety_id"], name: "index_grape_variety_wineries_on_grape_variety_id"
    t.index ["winery_id"], name: "index_grape_variety_wineries_on_winery_id"
  end

  create_table "wine_style_wineries", force: :cascade do |t|
    t.bigint "wine_style_id", null: false
    t.bigint "winery_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["wine_style_id"], name: "index_wine_style_wineries_on_wine_style_id"
    t.index ["winery_id"], name: "index_wine_style_wineries_on_winery_id"
  end

  create_table "wine_styles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wineries", force: :cascade do |t|
    t.string "title", null: false
    t.text "open_days_and_time"
    t.integer "wine_region_id", null: false
    t.integer "tasting_type_id"
    t.integer "winery_type_id"
    t.string "facilities"
    t.text "description"
    t.string "address"
    t.string "website", null: false
    t.string "phone", null: false
    t.string "map"
    t.float "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "award_wineries", "awards"
  add_foreign_key "award_wineries", "wineries"
  add_foreign_key "dining_wineries", "dinings"
  add_foreign_key "dining_wineries", "wineries"
  add_foreign_key "experience_wineries", "experiences"
  add_foreign_key "experience_wineries", "wineries"
  add_foreign_key "grape_variety_wineries", "grape_varieties"
  add_foreign_key "grape_variety_wineries", "wineries"
  add_foreign_key "wine_style_wineries", "wine_styles"
  add_foreign_key "wine_style_wineries", "wineries"
end

end