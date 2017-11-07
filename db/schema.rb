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

ActiveRecord::Schema.define(version: 20171107192102) do

  create_table "trades", force: :cascade do |t|
    t.integer "index"
    t.string "ticker"
    t.date "date_buy"
    t.date "date_sell"
    t.float "amount"
    t.float "amount_BTC"
    t.float "price_buy"
    t.float "price_sell"
    t.float "price"
    t.string "exchange"
    t.boolean "open"
    t.float "ret_BTC"
    t.float "ret_USD"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
