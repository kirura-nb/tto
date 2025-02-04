# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2025_02_04_021102) do

  create_table "answers", force: :cascade do |t|
    t.string "answer", null: false
    t.string "commentary", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "choices", force: :cascade do |t|
    t.integer "questions_id", null: false
    t.integer "choice", null: false
    t.string "content", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["questions_id"], name: "index_choices_on_questions_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "department", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exam_types", force: :cascade do |t|
    t.string "qualification", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exams", force: :cascade do |t|
    t.integer "respondent_id", null: false
    t.integer "questions_id", null: false
    t.integer "questions_num", null: false
    t.integer "answer_num", null: false
    t.string "user_answer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["questions_id"], name: "index_exams_on_questions_id"
    t.index ["respondent_id"], name: "index_exams_on_respondent_id"
  end

  create_table "problems", force: :cascade do |t|
    t.integer "author_id", null: false
    t.integer "qualification_id", null: false
    t.string "questions", null: false
    t.integer "answer_id", null: false
    t.integer "questions_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["answer_id"], name: "index_problems_on_answer_id"
    t.index ["author_id"], name: "index_problems_on_author_id"
    t.index ["qualification_id"], name: "index_problems_on_qualification_id"
    t.index ["questions_id"], name: "index_problems_on_questions_id"
  end

  create_table "users", primary_key: "number", id: :string, force: :cascade do |t|
    t.string "name", null: false
    t.integer "department_id", null: false
    t.integer "password", null: false
    t.integer "re_password", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["department_id"], name: "index_users_on_department_id"
  end

  add_foreign_key "choices", "problems", column: "questions_id"
  add_foreign_key "exams", "problems", column: "questions_id"
  add_foreign_key "exams", "users", column: "respondent_id"
  add_foreign_key "problems", "answers"
  add_foreign_key "problems", "exam_types", column: "qualification_id"
  add_foreign_key "problems", "problems", column: "questions_id"
  add_foreign_key "problems", "users", column: "author_id"
  add_foreign_key "users", "department"
end
