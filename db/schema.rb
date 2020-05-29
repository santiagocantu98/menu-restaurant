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

ActiveRecord::Schema.define(version: 2020_05_28_091235) do

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
    t.string "role"
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "califications", force: :cascade do |t|
    t.bigint "menu_id", null: false
    t.bigint "waiter_id", null: false
    t.decimal "rating"
    t.string "comment"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "ticket_id"
    t.index ["menu_id"], name: "index_califications_on_menu_id"
    t.index ["waiter_id"], name: "index_califications_on_waiter_id"
  end

  create_table "media", force: :cascade do |t|
    t.string "type"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "product_id"
    t.index ["product_id"], name: "index_media_on_product_id"
  end

  create_table "media_files", force: :cascade do |t|
    t.string "type_media"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "product_id"
    t.decimal "position"
    t.index ["product_id"], name: "index_media_files_on_product_id"
  end

  create_table "menus", force: :cascade do |t|
    t.bigint "admin_user_id", null: false
    t.string "title"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "menu_color"
    t.string "text_color"
    t.string "rating_color"
    t.index ["admin_user_id"], name: "index_menus_on_admin_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.decimal "price"
    t.decimal "rating"
    t.bigint "section_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "position"
    t.index ["section_id"], name: "index_products_on_section_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.bigint "menu_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "page_number"
    t.index ["menu_id"], name: "index_sections_on_menu_id"
  end

  create_table "suggestions", force: :cascade do |t|
    t.bigint "menu_id", null: false
    t.string "comment"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_id"], name: "index_suggestions_on_menu_id"
  end

  create_table "waiters", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.bigint "menu_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "role"
    t.index ["menu_id"], name: "index_waiters_on_menu_id"
  end

  add_foreign_key "califications", "menus"
  add_foreign_key "califications", "waiters"
  add_foreign_key "media_files", "products"
  add_foreign_key "menus", "admin_users"
  add_foreign_key "products", "sections"
  add_foreign_key "sections", "menus"
  add_foreign_key "suggestions", "menus"
  add_foreign_key "waiters", "menus"
end
