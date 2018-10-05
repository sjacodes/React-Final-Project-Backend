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

ActiveRecord::Schema.define(version: 2018_10_05_080016) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artworks", force: :cascade do |t|
    t.string "title"
    t.string "artist"
    t.string "collection"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "date"
  end

  create_table "captions", force: :cascade do |t|
    t.string "text"
    t.bigint "gallery_wall_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "x_position"
    t.integer "y_position"
    t.integer "width"
    t.integer "height"
    t.boolean "rendered"
    t.boolean "title"
    t.index ["gallery_wall_id"], name: "index_captions_on_gallery_wall_id"
  end

  create_table "gallery_walls", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_gallery_walls_on_user_id"
  end

  create_table "titles", force: :cascade do |t|
    t.string "text"
    t.bigint "gallery_wall_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "x_position"
    t.integer "y_position"
    t.integer "width"
    t.integer "height"
    t.index ["gallery_wall_id"], name: "index_titles_on_gallery_wall_id"
  end

  create_table "user_selections", force: :cascade do |t|
    t.bigint "gallery_wall_id"
    t.bigint "artwork_id"
    t.integer "x_position"
    t.integer "y_position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "width"
    t.integer "height"
    t.index ["artwork_id"], name: "index_user_selections_on_artwork_id"
    t.index ["gallery_wall_id"], name: "index_user_selections_on_gallery_wall_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
