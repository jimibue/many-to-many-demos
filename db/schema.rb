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

ActiveRecord::Schema.define(version: 2021_04_08_165956) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "questions", force: :cascade do |t|
    t.string "question"
    t.string "correct_answer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "required_vaccinations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "vaccine_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_required_vaccinations_on_user_id"
    t.index ["vaccine_id"], name: "index_required_vaccinations_on_vaccine_id"
  end

  create_table "streaks", force: :cascade do |t|
    t.string "name"
    t.string "reward"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "student_questions", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "question_id", null: false
    t.string "answer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_student_questions_on_question_id"
    t.index ["student_id"], name: "index_student_questions_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_streaks", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "streak_id", null: false
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["streak_id"], name: "index_user_streaks_on_streak_id"
    t.index ["user_id"], name: "index_user_streaks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vaccinations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "vaccine_id", null: false
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_vaccinations_on_user_id"
    t.index ["vaccine_id"], name: "index_vaccinations_on_vaccine_id"
  end

  create_table "vaccines", force: :cascade do |t|
    t.string "name"
    t.string "maker"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_vaccines_on_user_id"
  end

  add_foreign_key "required_vaccinations", "users"
  add_foreign_key "required_vaccinations", "vaccines"
  add_foreign_key "student_questions", "questions"
  add_foreign_key "student_questions", "students"
  add_foreign_key "user_streaks", "streaks"
  add_foreign_key "user_streaks", "users"
  add_foreign_key "vaccinations", "users"
  add_foreign_key "vaccinations", "vaccines"
  add_foreign_key "vaccines", "users"
end
