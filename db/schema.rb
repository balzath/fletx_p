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

ActiveRecord::Schema.define(version: 20220421041253) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "nombre_completo"
    t.decimal  "celular"
    t.string   "direccion"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "usersvehiculos", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "vehiculo_id"
    t.decimal  "horas"
    t.string   "estado"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_usersvehiculos_on_user_id", using: :btree
    t.index ["vehiculo_id"], name: "index_usersvehiculos_on_vehiculo_id", using: :btree
  end

  create_table "vehiculos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.string   "modelo"
    t.decimal  "valor"
    t.string   "calificacion"
    t.string   "estado"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
  end

  add_foreign_key "usersvehiculos", "users"
  add_foreign_key "usersvehiculos", "vehiculos"
end
