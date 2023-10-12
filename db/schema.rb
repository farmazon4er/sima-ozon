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

ActiveRecord::Schema[7.1].define(version: 2023_10_12_093205) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", id: :serial, force: :cascade do |t|
    t.integer "sid", null: false
    t.string "name"
    t.text "description"
    t.string "slug"
    t.integer "balance", default: 0, null: false
    t.decimal "price", precision: 10, scale: 2, null: false
    t.decimal "wholesale_price", precision: 10, scale: 2, null: false
    t.decimal "box_depth", precision: 7, scale: 2
    t.decimal "box_height", precision: 7, scale: 2
    t.decimal "box_width", precision: 7, scale: 2
    t.decimal "depth", precision: 7, scale: 2
    t.decimal "height", precision: 7, scale: 2
    t.decimal "width", precision: 7, scale: 2
    t.decimal "weight", precision: 7, scale: 2
    t.boolean "is_price_fixed"
    t.boolean "is_adult"
    t.boolean "is_markdown"
    t.boolean "is_protected"
    t.text "agg_photos", default: [], array: true
    t.string "base_photo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_items_on_id", unique: true
    t.index ["sid"], name: "index_items_on_sid", unique: true
  end

end
