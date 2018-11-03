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

ActiveRecord::Schema.define(version: 20181101133103) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "articles", force: :cascade do |t|
    t.integer  "service_id",   null: false
    t.string   "title_ru"
    t.string   "title_en"
    t.string   "title_uk"
    t.text     "text_ru"
    t.text     "text_en"
    t.text     "text_uk"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "slug"
    t.string   "videolink_ru"
    t.string   "videolink_en"
    t.string   "videolink_uk"
    t.index ["service_id"], name: "index_articles_on_service_id", using: :btree
  end

  create_table "articles_posts", id: false, force: :cascade do |t|
    t.integer "article_id", null: false
    t.integer "post_id",    null: false
    t.index ["article_id", "post_id"], name: "index_articles_posts_on_article_id_and_post_id", using: :btree
    t.index ["post_id", "article_id"], name: "index_articles_posts_on_post_id_and_article_id", using: :btree
  end

  create_table "comments", force: :cascade do |t|
    t.string   "author",     null: false
    t.string   "email",      null: false
    t.text     "text",       null: false
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comments_on_post_id", using: :btree
  end

  create_table "facts", force: :cascade do |t|
    t.string   "text_ru"
    t.string   "text_en"
    t.string   "text_uk"
    t.string   "logo"
    t.string   "page_type"
    t.integer  "page_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["page_type", "page_id"], name: "index_facts_on_page_type_and_page_id", using: :btree
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree
  end

  create_table "landing_page_items", force: :cascade do |t|
    t.integer  "block_type"
    t.string   "title_ru"
    t.string   "title_en"
    t.string   "title_uk"
    t.string   "description_ru"
    t.string   "description_en"
    t.string   "description_uk"
    t.string   "logo"
    t.integer  "landing_page_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["landing_page_id"], name: "index_landing_page_items_on_landing_page_id", using: :btree
  end

  create_table "landing_pages", force: :cascade do |t|
    t.integer  "singleton_guard"
    t.string   "cooperation_title_ru"
    t.string   "cooperation_title_en"
    t.string   "cooperation_title_uk"
    t.string   "about_title_ru"
    t.string   "about_title_en"
    t.string   "about_title_uk"
    t.text     "about_text_ru"
    t.text     "about_text_en"
    t.text     "about_text_uk"
    t.string   "services_title_ru"
    t.string   "services_title_en"
    t.string   "services_title_uk"
    t.text     "services_text_ru"
    t.text     "services_text_en"
    t.text     "services_text_uk"
    t.string   "how_work_title_ru"
    t.string   "how_work_title_en"
    t.string   "how_work_title_uk"
    t.text     "how_work_text_ru"
    t.text     "how_work_text_en"
    t.text     "how_work_text_uk"
    t.string   "profits_title_ru"
    t.string   "profits_title_en"
    t.string   "profits_title_uk"
    t.text     "profits_text_ru"
    t.text     "profits_text_en"
    t.text     "profits_text_uk"
    t.string   "for_whom_title_ru"
    t.string   "for_whom_title_en"
    t.string   "for_whom_title_uk"
    t.text     "for_whom_text_ru"
    t.text     "for_whom_text_en"
    t.text     "for_whom_text_uk"
    t.string   "reviews_title_ru"
    t.string   "reviews_title_en"
    t.string   "reviews_title_uk"
    t.text     "reviews_text_ru"
    t.text     "reviews_text_en"
    t.text     "reviews_text_uk"
    t.string   "partners_title_ru"
    t.string   "partners_title_en"
    t.string   "partners_title_uk"
    t.text     "partners_text_ru"
    t.text     "partners_text_en"
    t.text     "partners_text_uk"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["singleton_guard"], name: "index_landing_pages_on_singleton_guard", unique: true, using: :btree
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title_ru"
    t.string   "title_en"
    t.string   "title_uk"
    t.text     "text_ru"
    t.text     "text_en"
    t.text     "text_uk"
    t.string   "author_ru"
    t.string   "author_en"
    t.string   "author_uk"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prices", force: :cascade do |t|
    t.integer  "article_id"
    t.string   "title_ru"
    t.string   "title_en"
    t.string   "title_uk"
    t.string   "description_ru"
    t.string   "description_en"
    t.string   "description_uk"
    t.integer  "package"
    t.integer  "value"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["article_id"], name: "index_prices_on_article_id", using: :btree
  end

  create_table "services", force: :cascade do |t|
    t.string   "title_ru"
    t.string   "title_en"
    t.string   "title_uk"
    t.text     "text_ru"
    t.text     "text_en"
    t.text     "text_uk"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "slug"
    t.string   "videolink_ru"
    t.string   "videolink_en"
    t.string   "videolink_uk"
  end

  add_foreign_key "articles", "services"
  add_foreign_key "comments", "posts"
  add_foreign_key "landing_page_items", "landing_pages"
  add_foreign_key "prices", "articles"
end
