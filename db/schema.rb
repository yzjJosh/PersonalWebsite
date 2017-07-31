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

ActiveRecord::Schema.define(version: 20170731075040) do

  create_table "courses", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.text     "description"
    t.integer  "education_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["education_id"], name: "idx_courses_index_courses_on_education_id"
  end

  create_table "educations", force: :cascade do |t|
    t.string   "school",      limit: 255
    t.string   "degree",      limit: 255
    t.string   "location",    limit: 255
    t.datetime "start_time"
    t.datetime "end_time"
    t.decimal  "GPA",                     precision: 10, scale: 2
    t.decimal  "GPA_scale",               precision: 10, scale: 2
    t.string   "photo",       limit: 255
    t.text     "description"
    t.integer  "person_id"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.string   "major",       limit: 255
    t.index ["person_id"], name: "idx_educations_index_educations_on_person_id"
  end

  create_table "honors", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.datetime "time"
    t.string   "granted_by",  limit: 255
    t.string   "location",    limit: 255
    t.text     "description"
    t.integer  "person_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["person_id"], name: "idx_honors_index_honors_on_person_id"
  end

  create_table "interests", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description"
    t.integer  "person_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["person_id"], name: "idx_interests_index_interests_on_person_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "company",     limit: 255
    t.string   "title",       limit: 255
    t.string   "location",    limit: 255
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "photo",       limit: 255
    t.text     "description"
    t.integer  "person_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["person_id"], name: "idx_jobs_index_jobs_on_person_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "proficiency", limit: 255
    t.integer  "person_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["person_id"], name: "idx_languages_index_languages_on_person_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string   "sender"
    t.string   "email"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "ip"
  end

  create_table "people", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.string   "profile_photo",     limit: 255
    t.string   "title",             limit: 255
    t.string   "company_or_school", limit: 255
    t.string   "email",             limit: 255
    t.string   "address",           limit: 255
    t.string   "linkedin_url",      limit: 255
    t.string   "github_url",        limit: 255
    t.string   "facebook_url",      limit: 255
    t.string   "google_plus_url",   limit: 255
    t.string   "wechat_qrcode",     limit: 255
    t.text     "description"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.datetime "start_time"
    t.datetime "end_time"
    t.text     "description"
    t.integer  "education_id"
    t.integer  "job_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["education_id"], name: "idx_projects_index_projects_on_education_id"
    t.index ["job_id"], name: "idx_projects_index_projects_on_job_id"
  end

  create_table "publications", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.datetime "time"
    t.text     "description"
    t.integer  "person_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["person_id"], name: "idx_publications_index_publications_on_person_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description"
    t.integer  "person_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["person_id"], name: "idx_skills_index_skills_on_person_id"
  end

  create_table "slides", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "content"
    t.string   "background", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.text     "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_users_on_name", unique: true
  end

end
