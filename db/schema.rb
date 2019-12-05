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

ActiveRecord::Schema.define(version: 2019_12_05_163759) do

  create_table "going_to_raids", force: :cascade do |t|
    t.integer "user_id"
    t.integer "plan_raid_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plan_raid_id"], name: "index_going_to_raids_on_plan_raid_id"
    t.index ["user_id"], name: "index_going_to_raids_on_user_id"
  end

  create_table "land_marks", force: :cascade do |t|
    t.string "name"
    t.boolean "is_gym"
    t.float "lat"
    t.float "long"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plan_raids", force: :cascade do |t|
    t.integer "user_id"
    t.integer "spot_raid_id"
    t.time "start_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spot_raid_id"], name: "index_plan_raids_on_spot_raid_id"
    t.index ["user_id"], name: "index_plan_raids_on_user_id"
  end

  create_table "poke_events", force: :cascade do |t|
    t.integer "user_id"
    t.integer "land_mark_id"
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["land_mark_id"], name: "index_poke_events_on_land_mark_id"
    t.index ["user_id"], name: "index_poke_events_on_user_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.boolean "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spot_raids", force: :cascade do |t|
    t.integer "user_id"
    t.integer "land_mark_id"
    t.integer "pokemon_id"
    t.integer "tier"
    t.time "remaining_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["land_mark_id"], name: "index_spot_raids_on_land_mark_id"
    t.index ["pokemon_id"], name: "index_spot_raids_on_pokemon_id"
    t.index ["user_id"], name: "index_spot_raids_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "trainer"
    t.integer "pos", default: 0
    t.integer "neg", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["trainer"], name: "index_users_on_trainer", unique: true
  end

end
