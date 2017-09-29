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

ActiveRecord::Schema.define(version: 20170810123744) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "simple_admin_entities", force: :cascade do |t|
    t.string "model_klass_name"
    t.string "model_plural_name"
    t.string "label"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "simple_admin_entity_field_types", force: :cascade do |t|
    t.string "name"
    t.string "template"
    t.boolean "inbuilt", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "simple_admin_entity_fields", force: :cascade do |t|
    t.string "name"
    t.string "label"
    t.integer "entity_field_type_id", null: false
    t.integer "entity_id", null: false
    t.integer "presentation"
    t.integer "sort_order", default: 0
    t.boolean "search_indexable", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "simple_admin_plugin_types", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "simple_admin_profiles", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "avatar"
    t.string "first_name"
    t.string "last_name"
    t.string "twitter_nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "simple_admin_roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resource_type", "resource_id"], name: "index_simple_admin_roles_on_resource_type_and_resource_id"
  end

  create_table "simple_admin_settings", force: :cascade do |t|
    t.string "name"
    t.string "value"
    t.string "presentation"
    t.integer "sort_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "simple_admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "simple_admin_users_simple_admin_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_simple_admin_users_simple_admin_roles_on_role_id"
    t.index ["user_id"], name: "index_simple_admin_users_simple_admin_roles_on_user_id"
  end

end
