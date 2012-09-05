# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120905114104) do

  create_table "indicators", :force => true do |t|
    t.string   "content"
    t.string   "case"
    t.text     "description"
    t.string   "analyst"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "type"
    t.string   "md5sum"
    t.string   "ipaddress"
    t.integer  "confidence"
    t.integer  "privacy_tag_id"
    t.string   "alternateid"
  end

  create_table "privacy_tags", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "color"
    t.text     "description"
  end

end
