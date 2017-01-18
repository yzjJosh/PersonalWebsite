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

ActiveRecord::Schema.define(version: 20170118021805) do

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "education_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["education_id"], name: "index_courses_on_education_id"
  end

  create_table "educations", force: :cascade do |t|
    t.string   "school"
    t.string   "degree"
    t.string   "location"
    t.datetime "start_time"
    t.datetime "end_time"
    t.decimal  "GPA"
    t.decimal  "GPA_scale"
    t.text     "description"
    t.integer  "person_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["person_id"], name: "index_educations_on_person_id"
  end

  create_table "honors", force: :cascade do |t|
    t.string   "name"
    t.datetime "time"
    t.string   "granted_by"
    t.string   "location"
    t.text     "description"
    t.integer  "person_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["person_id"], name: "index_honors_on_person_id"
  end

  create_table "interests", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "person_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["person_id"], name: "index_interests_on_person_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "company"
    t.string   "title"
    t.string   "location"
    t.datetime "start_time"
    t.datetime "end_time"
    t.text     "description"
    t.integer  "person_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["person_id"], name: "index_jobs_on_person_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.string   "proficiency"
    t.integer  "person_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["person_id"], name: "index_languages_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "profile_photo_url"
    t.string   "title"
    t.string   "company_or_school"
    t.string   "email"
    t.string   "address"
    t.string   "linkedin_url"
    t.string   "github_url"
    t.string   "facebook_url"
    t.string   "google_plus_url"
    t.string   "wechat_barcode_url"
    t.text     "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.datetime "start_time"
    t.datetime "end_time"
    t.text     "description"
    t.integer  "education_id"
    t.integer  "job_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["education_id"], name: "index_projects_on_education_id"
    t.index ["job_id"], name: "index_projects_on_job_id"
  end

  create_table "publications", force: :cascade do |t|
    t.string   "name"
    t.datetime "time"
    t.text     "description"
    t.integer  "person_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["person_id"], name: "index_publications_on_person_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "person_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["person_id"], name: "index_skills_on_person_id"
  end

end
