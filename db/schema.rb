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

ActiveRecord::Schema.define(version: 2020_03_29_200349) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "bikes", force: :cascade do |t|
    t.string "more_info"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_bikes_on_user_id"
  end

  create_table "carts", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name", null: false
    t.string "code_postal", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "sender_id"
    t.bigint "recipient_id"
    t.string "content", default: " "
    t.integer "note", default: 5
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipient_id"], name: "index_comments_on_recipient_id"
    t.index ["sender_id"], name: "index_comments_on_sender_id"
  end

  create_table "private_messages", force: :cascade do |t|
    t.bigint "recipientMP_id"
    t.bigint "senderMP_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "content"
    t.boolean "read", default: false
    t.index ["recipientMP_id"], name: "index_private_messages_on_recipientMP_id"
    t.index ["senderMP_id"], name: "index_private_messages_on_senderMP_id"
  end

  create_table "rents", force: :cascade do |t|
    t.integer "prix", default: 1, null: false
    t.boolean "payed", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "bike_id"
    t.bigint "user_id"
    t.datetime "date_disponible"
    t.datetime "date_end"
    t.index ["user_id"], name: "index_rents_on_user_id"
  end

  create_table "table_cities", force: :cascade do |t|
    t.string "name", null: false
    t.string "code_postal", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name", default: " "
    t.string "last_name", default: " "
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "birthday", default: "1990-05-21 10:00:00"
    t.boolean "verified?", default: false
    t.boolean "is_admin?", default: false
    t.string "adresse", default: " "
    t.string "city"
    t.bigint "city_id"
    t.index ["city_id"], name: "index_users_on_city_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
