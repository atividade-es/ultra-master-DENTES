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

ActiveRecord::Schema[7.0].define(version: 2023_08_03_031037) do
  create_table "atendimentos", force: :cascade do |t|
    t.integer "dentista_id", null: false
    t.integer "paciente_id", null: false
    t.datetime "data_hora"
    t.text "observacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dentista_id"], name: "index_atendimentos_on_dentista_id"
    t.index ["paciente_id"], name: "index_atendimentos_on_paciente_id"
  end

  create_table "consulta", force: :cascade do |t|
    t.integer "dentista_id", null: false
    t.integer "paciente_id", null: false
    t.datetime "data_hora"
    t.text "observacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dentista_id"], name: "index_consulta_on_dentista_id"
    t.index ["paciente_id"], name: "index_consulta_on_paciente_id"
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
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cpf"
  end

  add_foreign_key "atendimentos", "dentista", column: "dentista_id"
  add_foreign_key "atendimentos", "pacientes"
  add_foreign_key "consulta", "dentista", column: "dentista_id"
  add_foreign_key "consulta", "pacientes"
end
