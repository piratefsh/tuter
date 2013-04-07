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

<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20130406204809) do
=======
ActiveRecord::Schema.define(:version => 20130406203853) do

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.integer  "course_ID"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.integer  "group_ID"
    t.text     "desc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end
>>>>>>> 552f444687a4fd51c136f8b0872e9ba9549ca83c

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.float    "longitude"
    t.float    "latitude"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "organization_roles", :force => true do |t|
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "organization_ID"
    t.string   "organization_name"
  end

  create_table "programs", :force => true do |t|
    t.string   "name"
    t.integer  "program_ID"
    t.text     "desc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "student_roles", :force => true do |t|
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "student_ID"
    t.integer  "age"
    t.string   "year_in_school"
    t.boolean  "transportation"
  end

  create_table "tutor_roles", :force => true do |t|
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "tutor_ID"
    t.integer  "age"
    t.string   "year_in_school"
    t.float    "rating"
    t.boolean  "transportation"
  end

# Could not dump table "users" because of following StandardError
#   Unknown type 'bool' for column 'student'

end
