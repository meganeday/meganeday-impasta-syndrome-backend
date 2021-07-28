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

ActiveRecord::Schema.define(version: 2021_07_21_234605) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "board_recipes", force: :cascade do |t|
    t.bigint "recipe_id", null: false
    t.bigint "board_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["board_id"], name: "index_board_recipes_on_board_id"
    t.index ["recipe_id"], name: "index_board_recipes_on_recipe_id"
  end

  create_table "boards", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "title"
    t.string "detail"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_boards_on_user_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "recipe_title"
    t.string "time"
    t.string "meal_type"
    t.string "image"
    t.string "ingredient_list", default: [], array: true
    t.string "instruction_list", default: [], array: true
    t.boolean "favorite"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ingredient_list"], name: "index_recipes_on_ingredient_list", using: :gin
    t.index ["instruction_list"], name: "index_recipes_on_instruction_list", using: :gin
    t.index ["user_id"], name: "index_recipes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "board_recipes", "boards"
  add_foreign_key "board_recipes", "recipes"
  add_foreign_key "boards", "users"
  add_foreign_key "recipes", "users"
end
