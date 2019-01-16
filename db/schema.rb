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

ActiveRecord::Schema.define(version: 20190116053937) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "about_us_pages", force: :cascade do |t|
    t.integer  "singleton_guard"
    t.text     "content_ru"
    t.text     "content_en"
    t.text     "content_uk"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.text     "content_sk"
    t.string   "meta_title_ru"
    t.string   "meta_title_en"
    t.string   "meta_title_uk"
    t.string   "meta_description_ru"
    t.string   "meta_description_en"
    t.string   "meta_description_uk"
    t.index ["singleton_guard"], name: "index_about_us_pages_on_singleton_guard", unique: true, using: :btree
  end

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
    t.integer  "service_id",          null: false
    t.string   "title_ru"
    t.string   "title_en"
    t.string   "title_uk"
    t.text     "content_ru"
    t.text     "content_en"
    t.text     "content_uk"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "slug"
    t.integer  "order"
    t.string   "title_sk"
    t.text     "content_sk"
    t.string   "meta_title_ru"
    t.string   "meta_title_en"
    t.string   "meta_title_uk"
    t.string   "meta_description_ru"
    t.string   "meta_description_en"
    t.string   "meta_description_uk"
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

  create_table "contacts", force: :cascade do |t|
    t.integer  "contact_type"
    t.string   "value"
    t.integer  "has_contacts_id"
    t.string   "has_contacts_type"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "order"
    t.index ["has_contacts_type", "has_contacts_id"], name: "index_contacts_on_has_contacts_type_and_has_contacts_id", using: :btree
  end

  create_table "contacts_pages", force: :cascade do |t|
    t.integer  "singleton_guard"
    t.string   "map_coords"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "meta_title_ru"
    t.string   "meta_title_en"
    t.string   "meta_title_uk"
    t.string   "meta_description_ru"
    t.string   "meta_description_en"
    t.string   "meta_description_uk"
    t.index ["singleton_guard"], name: "index_contacts_pages_on_singleton_guard", unique: true, using: :btree
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name_ru"
    t.string   "name_en"
    t.string   "name_uk"
    t.string   "position_ru"
    t.string   "position_en"
    t.string   "position_uk"
    t.string   "description_ru"
    t.string   "description_en"
    t.string   "description_uk"
    t.string   "avatar"
    t.integer  "service_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "order"
    t.string   "name_sk"
    t.string   "position_sk"
    t.string   "description_sk"
    t.index ["service_id"], name: "index_employees_on_service_id", using: :btree
  end

  create_table "features", force: :cascade do |t|
    t.integer  "from",             null: false
    t.integer  "to",               null: false
    t.string   "unit_ru"
    t.string   "unit_en"
    t.string   "unit_uk"
    t.string   "description_ru"
    t.string   "description_en"
    t.string   "description_uk"
    t.string   "featureable_type"
    t.integer  "featureable_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "order"
    t.string   "unit_sk"
    t.string   "description_sk"
    t.index ["featureable_type", "featureable_id"], name: "index_features_on_featureable_type_and_featureable_id", using: :btree
  end

  create_table "footers", force: :cascade do |t|
    t.integer "singleton_guard"
    t.string  "bratislava_phone"
    t.string  "moscow_phone"
    t.string  "kiev_phone"
    t.string  "vk_link"
    t.string  "facebook_link"
    t.string  "gplus_link"
    t.string  "youtube_link"
    t.index ["singleton_guard"], name: "index_footers_on_singleton_guard", unique: true, using: :btree
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

  create_table "landing_pages", force: :cascade do |t|
    t.integer  "singleton_guard"
    t.string   "title_ru"
    t.string   "title_en"
    t.string   "title_uk"
    t.string   "subtitle_ru"
    t.string   "subtitle_en"
    t.string   "subtitle_uk"
    t.text     "about_block_text_ru"
    t.text     "about_block_text_en"
    t.text     "about_block_text_uk"
    t.string   "about_block_image"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "title_sk"
    t.string   "subtitle_sk"
    t.text     "about_block_text_sk"
    t.string   "meta_title_ru"
    t.string   "meta_title_en"
    t.string   "meta_title_uk"
    t.string   "meta_description_ru"
    t.string   "meta_description_en"
    t.string   "meta_description_uk"
    t.index ["singleton_guard"], name: "index_landing_pages_on_singleton_guard", unique: true, using: :btree
  end

  create_table "news_pages", force: :cascade do |t|
    t.integer "singleton_guard"
    t.string  "meta_title_ru"
    t.string  "meta_title_en"
    t.string  "meta_title_uk"
    t.string  "meta_description_ru"
    t.string  "meta_description_en"
    t.string  "meta_description_uk"
    t.index ["singleton_guard"], name: "index_news_pages_on_singleton_guard", unique: true, using: :btree
  end

  create_table "partners", force: :cascade do |t|
    t.string  "logo"
    t.string  "url"
    t.integer "footer_id"
    t.integer "order"
    t.index ["footer_id"], name: "index_partners_on_footer_id", using: :btree
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
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "title_sk"
    t.text     "text_sk"
    t.string   "author_sk"
    t.string   "meta_title_ru"
    t.string   "meta_title_en"
    t.string   "meta_title_uk"
    t.string   "meta_description_ru"
    t.string   "meta_description_en"
    t.string   "meta_description_uk"
  end

  create_table "prices", force: :cascade do |t|
    t.integer  "article_id"
    t.string   "title_ru"
    t.string   "title_en"
    t.string   "title_uk"
    t.string   "description_ru"
    t.string   "description_en"
    t.string   "description_uk"
    t.string   "value"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "order"
    t.string   "title_sk"
    t.string   "description_sk"
    t.index ["article_id"], name: "index_prices_on_article_id", using: :btree
  end

  create_table "prices_pages", force: :cascade do |t|
    t.integer "singleton_guard"
    t.string  "meta_title_ru"
    t.string  "meta_title_en"
    t.string  "meta_title_uk"
    t.string  "meta_description_ru"
    t.string  "meta_description_en"
    t.string  "meta_description_uk"
    t.index ["singleton_guard"], name: "index_prices_pages_on_singleton_guard", unique: true, using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "name_ru"
    t.string   "name_en"
    t.string   "name_uk"
    t.string   "description_ru"
    t.string   "description_en"
    t.string   "description_uk"
    t.string   "link"
    t.string   "text_ru"
    t.string   "text_en"
    t.string   "text_uk"
    t.string   "avatar"
    t.string   "reviewable_type"
    t.integer  "reviewable_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "order"
    t.string   "name_sk"
    t.string   "description_sk"
    t.string   "text_sk"
    t.index ["reviewable_type", "reviewable_id"], name: "index_reviews_on_reviewable_type_and_reviewable_id", using: :btree
  end

  create_table "services", force: :cascade do |t|
    t.string   "title_ru"
    t.string   "title_en"
    t.string   "title_uk"
    t.text     "description_ru"
    t.text     "description_en"
    t.text     "description_uk"
    t.text     "content_ru"
    t.text     "content_en"
    t.text     "content_uk"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "slug"
    t.integer  "order"
    t.string   "title_sk"
    t.text     "description_sk"
    t.text     "content_sk"
    t.string   "meta_title_ru"
    t.string   "meta_title_en"
    t.string   "meta_title_uk"
    t.string   "meta_description_ru"
    t.string   "meta_description_en"
    t.string   "meta_description_uk"
  end

  create_table "user_callbacks", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "email",      null: false
    t.string   "phone"
    t.string   "source"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "articles", "services"
  add_foreign_key "comments", "posts"
  add_foreign_key "employees", "services"
  add_foreign_key "partners", "footers"
  add_foreign_key "prices", "articles"
end
