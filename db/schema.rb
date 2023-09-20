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

ActiveRecord::Schema[7.0].define(version: 2023_09_20_001645) do
  create_table "actions", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "actions_permissions", id: false, force: :cascade do |t|
    t.integer "permission_id", null: false
    t.integer "action_id", null: false
    t.index ["action_id", "permission_id"], name: "index_actions_permissions_on_action_id_and_permission_id"
    t.index ["permission_id", "action_id"], name: "index_actions_permissions_on_permission_id_and_action_id"
  end

  create_table "actions_resources", id: false, force: :cascade do |t|
    t.integer "action_id", null: false
    t.integer "resource_id", null: false
    t.index ["action_id", "resource_id"], name: "index_actions_resources_on_action_id_and_resource_id"
    t.index ["resource_id", "action_id"], name: "index_actions_resources_on_resource_id_and_action_id"
  end

  create_table "areas", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "aspiring_teaching_categories", force: :cascade do |t|
    t.string "descripcion"
    t.integer "puntaje"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contracted_teaching_categories", force: :cascade do |t|
    t.string "descripcion"
    t.float "salario"
    t.boolean "tiempoCompleto"
    t.boolean "medioTiempo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "degree_types", force: :cascade do |t|
    t.string "descripcion"
    t.integer "puntaje"
    t.integer "nivel"
    t.float "bono"
    t.boolean "posgrado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.string "descripcion"
    t.integer "puntaje"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fees", force: :cascade do |t|
    t.string "descripcion"
    t.float "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patent_types", force: :cascade do |t|
    t.string "descripcion"
    t.integer "puntaje"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permissions", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permissions_roles", id: false, force: :cascade do |t|
    t.integer "role_id", null: false
    t.integer "permission_id", null: false
    t.index ["permission_id", "role_id"], name: "index_permissions_roles_on_permission_id_and_role_id"
    t.index ["role_id", "permission_id"], name: "index_permissions_roles_on_role_id_and_permission_id"
  end

  create_table "research_types", force: :cascade do |t|
    t.string "nivel"
    t.integer "puntaje"
    t.float "bono"
    t.boolean "semillero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "researcher_categories", force: :cascade do |t|
    t.string "descripcion"
    t.integer "puntaje"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resources", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vacants", force: :cascade do |t|
    t.integer "cantidad"
    t.integer "area_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_vacants_on_area_id"
  end

  add_foreign_key "vacants", "areas"
end
