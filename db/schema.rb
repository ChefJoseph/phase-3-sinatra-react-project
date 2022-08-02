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

ActiveRecord::Schema.define(version: 2022_07_29_192113) do

  create_table "friendships", force: :cascade do |t|
    t.integer "user_a_id"
    t.integer "user_b_id"
    t.datetime "friendship_length"
    t.integer "user_id"
    t.index ["user_a_id"], name: "index_friendships_on_user_a_id"
    t.index ["user_b_id"], name: "index_friendships_on_user_b_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.datetime "date_time"
    t.float "amount"
    t.string "description"
    t.integer "sender_id"
    t.integer "receiver_id"
    t.index ["receiver_id"], name: "index_transactions_on_receiver_id"
    t.index ["sender_id"], name: "index_transactions_on_sender_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "handle"
    t.integer "balance"
    t.string "profile_pic"
    t.string "friends"
    t.integer "user_created_on"
  end

end
