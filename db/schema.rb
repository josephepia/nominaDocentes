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

ActiveRecord::Schema[7.0].define(version: 2023_09_20_130303) do
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

  create_table "authorizations", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "resource_id", null: false
    t.integer "action_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["action_id"], name: "index_authorizations_on_action_id"
    t.index ["resource_id"], name: "index_authorizations_on_resource_id"
    t.index ["user_id"], name: "index_authorizations_on_user_id"
  end

  create_table "contracted_teaching_categories", force: :cascade do |t|
    t.string "descripcion"
    t.float "salario"
    t.boolean "tiempoCompleto"
    t.boolean "medioTiempo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.integer "horasSemanales"
    t.integer "horasTrabajadas"
    t.integer "horasRestantes"
    t.text "descripcion"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_contracts_on_user_id"
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

  create_table "degrees", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.integer "user_id", null: false
    t.integer "degreetype_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["degreetype_id"], name: "index_degrees_on_degreetype_id"
    t.index ["user_id"], name: "index_degrees_on_user_id"
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

  create_table "patents", force: :cascade do |t|
    t.string "nombre"
    t.integer "patenttype_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patenttype_id"], name: "index_patents_on_patenttype_id"
    t.index ["user_id"], name: "index_patents_on_user_id"
  end

  create_table "payrolls", force: :cascade do |t|
    t.float "sueldoBase"
    t.float "bonificacionTotal"
    t.float "valorHorasTrabajadas"
    t.integer "horasTrabajadas"
    t.float "sueldoTotal"
    t.integer "horasRestante"
    t.integer "horasPorTrabajar"
    t.float "valorHorasRestantes"
    t.integer "user_id", null: false
    t.integer "degrretype_id", null: false
    t.integer "researchtype_id", null: false
    t.integer "fee_id", null: false
    t.integer "contract_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_id"], name: "index_payrolls_on_contract_id"
    t.index ["degrretype_id"], name: "index_payrolls_on_degrretype_id"
    t.index ["fee_id"], name: "index_payrolls_on_fee_id"
    t.index ["researchtype_id"], name: "index_payrolls_on_researchtype_id"
    t.index ["user_id"], name: "index_payrolls_on_user_id"
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

  create_table "profiles", force: :cascade do |t|
    t.text "descripcion"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "requests", force: :cascade do |t|
    t.string "desripcion"
    t.boolean "estado"
    t.integer "vacant_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_requests_on_user_id"
    t.index ["vacant_id"], name: "index_requests_on_vacant_id"
  end

  create_table "research_groups", force: :cascade do |t|
    t.string "nombre"
    t.integer "user_id", null: false
    t.integer "researchtype_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["researchtype_id"], name: "index_research_groups_on_researchtype_id"
    t.index ["user_id"], name: "index_research_groups_on_user_id"
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

  create_table "roles_users", id: false, force: :cascade do |t|
    t.integer "role_id", null: false
    t.integer "user_id", null: false
    t.index ["role_id", "user_id"], name: "index_roles_users_on_role_id_and_user_id"
    t.index ["user_id", "role_id"], name: "index_roles_users_on_user_id_and_role_id"
  end

  create_table "user_experiences", force: :cascade do |t|
    t.integer "anos"
    t.integer "experience_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["experience_id"], name: "index_user_experiences_on_experience_id"
    t.index ["user_id"], name: "index_user_experiences_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "nombre"
    t.string "identificacion"
    t.integer "aspiringTeachingCategory_id"
    t.integer "contractedTeachingCategory_id"
    t.integer "researcherCategory_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aspiringTeachingCategory_id"], name: "index_users_on_aspiringTeachingCategory_id"
    t.index ["contractedTeachingCategory_id"], name: "index_users_on_contractedTeachingCategory_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["researcherCategory_id"], name: "index_users_on_researcherCategory_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vacants", force: :cascade do |t|
    t.integer "cantidad"
    t.integer "area_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_vacants_on_area_id"
  end

  add_foreign_key "authorizations", "actions"
  add_foreign_key "authorizations", "resources"
  add_foreign_key "authorizations", "users"
  add_foreign_key "contracts", "users"
  add_foreign_key "degrees", "degreetypes"
  add_foreign_key "degrees", "users"
  add_foreign_key "patents", "patenttypes"
  add_foreign_key "patents", "users"
  add_foreign_key "payrolls", "contracts"
  add_foreign_key "payrolls", "degrretypes"
  add_foreign_key "payrolls", "fees"
  add_foreign_key "payrolls", "researchtypes"
  add_foreign_key "payrolls", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "requests", "users"
  add_foreign_key "requests", "vacants"
  add_foreign_key "research_groups", "researchtypes"
  add_foreign_key "research_groups", "users"
  add_foreign_key "user_experiences", "experiences"
  add_foreign_key "user_experiences", "users"
  add_foreign_key "vacants", "areas"
end
