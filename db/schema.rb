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

ActiveRecord::Schema[7.0].define(version: 2023_08_11_025051) do
  create_table "atendimentos", force: :cascade do |t|
    t.integer "dentist_id", null: false
    t.integer "patient_id", null: false
    t.datetime "data_hora"
    t.text "observacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dentist_id"], name: "index_atendimentos_on_dentist_id"
    t.index ["patient_id"], name: "index_atendimentos_on_patient_id"
  end

  create_table "dentists", force: :cascade do |t|
    t.string "nome"
    t.string "especializacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "disponivel_segunda", default: 0
    t.integer "disponivel_terca", default: 0
    t.integer "disponivel_quarta", default: 0
    t.integer "disponivel_quinta", default: 0
    t.integer "disponivel_sexta", default: 0
    t.integer "disponivel_sabado", default: 0
    t.integer "disponivel_domingo", default: 0
    t.string "cro"
    t.string "contato"
    t.time "horario_chegada"
    t.time "horario_saida"
    t.string "email"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cpf"
  end

  add_foreign_key "atendimentos", "dentists"
  add_foreign_key "atendimentos", "patients"
end
