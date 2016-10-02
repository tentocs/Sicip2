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

ActiveRecord::Schema.define(version: 20160915224522) do

  create_table "activity_pendings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "project_id"
    t.date     "report1"
    t.date     "report2"
    t.date     "report3"
    t.date     "final_report"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["project_id"], name: "index_activity_pendings_on_project_id", using: :btree
  end

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "description"
    t.text     "requirement", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "coordinators", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "ci"
    t.string   "name"
    t.string   "lastname"
    t.string   "address"
    t.string   "email"
    t.string   "phone"
    t.string   "department"
    t.string   "specialty"
    t.string   "academic_degree"
    t.date     "registration_date"
    t.string   "position"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "evaluations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "evaluator_id"
    t.integer  "project_id"
    t.date     "date"
    t.text     "observation",  limit: 65535
    t.string   "decision"
    t.integer  "number"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["evaluator_id"], name: "index_evaluations_on_evaluator_id", using: :btree
    t.index ["project_id"], name: "index_evaluations_on_project_id", using: :btree
  end

  create_table "evaluators", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "ci"
    t.string   "name"
    t.string   "lastname"
    t.string   "address"
    t.string   "email"
    t.string   "phone"
    t.string   "department"
    t.string   "specialty"
    t.string   "academic_degree"
    t.date     "registration_date"
    t.string   "position"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "investigation_areas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "investigation_projects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "investigator_id"
    t.integer  "project_id"
    t.string   "investigator_type"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["investigator_id"], name: "index_investigation_projects_on_investigator_id", using: :btree
    t.index ["project_id"], name: "index_investigation_projects_on_project_id", using: :btree
  end

  create_table "investigators", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "ci"
    t.string   "name"
    t.string   "lastname"
    t.string   "address"
    t.string   "email"
    t.string   "phone"
    t.string   "department"
    t.string   "specialty"
    t.string   "academic_degree"
    t.date     "registration_date"
    t.string   "position"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "project_areas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "project_id"
    t.integer  "investigation_area_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["investigation_area_id"], name: "index_project_areas_on_investigation_area_id", using: :btree
    t.index ["project_id"], name: "index_project_areas_on_project_id", using: :btree
  end

  create_table "projects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "responsible"
    t.string   "co_respondible"
    t.string   "title"
    t.integer  "category_id"
    t.string   "deanery"
    t.integer  "investigation_area_id"
    t.string   "investigation_line"
    t.integer  "research_unit_id"
    t.integer  "duration"
    t.string   "academic_information"
    t.string   "administrative_information"
    t.integer  "state_id"
    t.date     "approval_date"
    t.date     "registration_date"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["category_id"], name: "index_projects_on_category_id", using: :btree
    t.index ["investigation_area_id"], name: "index_projects_on_investigation_area_id", using: :btree
    t.index ["research_unit_id"], name: "index_projects_on_research_unit_id", using: :btree
    t.index ["state_id"], name: "index_projects_on_state_id", using: :btree
  end

  create_table "reports", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "project_id"
    t.string   "file"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_reports_on_project_id", using: :btree
  end

  create_table "research_units", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "state_projects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "project_id"
    t.integer  "state_id"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_state_projects_on_project_id", using: :btree
    t.index ["state_id"], name: "index_state_projects_on_state_id", using: :btree
  end

  create_table "states", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "activity_pendings", "projects"
  add_foreign_key "evaluations", "evaluators"
  add_foreign_key "evaluations", "projects"
  add_foreign_key "investigation_projects", "investigators"
  add_foreign_key "investigation_projects", "projects"
  add_foreign_key "project_areas", "investigation_areas"
  add_foreign_key "project_areas", "projects"
  add_foreign_key "projects", "categories"
  add_foreign_key "projects", "investigation_areas"
  add_foreign_key "projects", "research_units"
  add_foreign_key "projects", "states"
  add_foreign_key "reports", "projects"
  add_foreign_key "state_projects", "projects"
  add_foreign_key "state_projects", "states"
end
