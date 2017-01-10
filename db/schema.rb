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

ActiveRecord::Schema.define(version: 20_170_109_040_033) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'categories', force: :cascade do |t|
    t.string   'category_name'
    t.datetime 'created_at',    null: false
    t.datetime 'updated_at',    null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string   'email',                  default: '',     null: false
    t.string   'encrypted_password',     default: '',     null: false
    t.string   'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer  'sign_in_count', default: 0, null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.inet     'current_sign_in_ip'
    t.inet     'last_sign_in_ip'
    t.datetime 'created_at',                              null: false
    t.datetime 'updated_at',                              null: false
    t.string   'role', default: 'user'
    t.index ['email'], name: 'index_users_on_email', unique: true, using: :btree
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true, using: :btree
  end

  create_table 'weather_categories', force: :cascade do |t|
    t.integer  'category_id'
    t.integer  'weather_datum_id'
    t.datetime 'created_at',       null: false
    t.datetime 'updated_at',       null: false
    t.index ['category_id'], name: 'index_weather_categories_on_category_id', using: :btree
    t.index ['weather_datum_id'], name: 'index_weather_categories_on_weather_datum_id', using: :btree
  end

  create_table 'weather_data', force: :cascade do |t|
    t.integer  'city_id', null: false
    t.string   'city_name'
    t.string   'description', default: 'no description'
    t.float    'imperial',    default: 0.0
    t.float    'metric',      default: 0.0
    t.float    'kelvin',      default: 0.0
    t.datetime 'created_at',                             null: false
    t.datetime 'updated_at',                             null: false
  end
end
