# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_19_011221) do

  create_table "deputados", force: :cascade do |t|
    t.string "txNomeParlamentar", null: false
    t.string "cpf", limit: 11, null: false
    t.integer "nuCarteiraParlamentar", null: false
    t.string "sgUF", null: false
    t.string "sgPartido"
    t.integer "legislatura_id"
    t.index ["legislatura_id"], name: "index_deputados_on_legislatura_id"
  end

  create_table "despesas", force: :cascade do |t|
    t.string "txtFornecedor"
    t.string "txtCNPJCPF"
    t.string "txtNumero", null: false
    t.string "indTipoDocumento"
    t.text "txtPassageiro"
    t.text "txtTrecho"
    t.datetime "datEmissao"
    t.decimal "vlrDocumento", null: false
    t.decimal "vlrGlosa", null: false
    t.decimal "vlrLiquido", null: false
    t.integer "numMes"
    t.integer "numAno"
    t.integer "numParcela"
    t.integer "numLote"
    t.integer "numRessarcimento"
    t.decimal "vlrRestituicao"
    t.integer "nuDeputadoId"
    t.integer "ideDocumento"
    t.text "urlDocumento"
    t.integer "tipo_despesa_id"
    t.integer "deputado_id"
    t.index ["deputado_id"], name: "index_despesas_on_deputado_id"
    t.index ["tipo_despesa_id"], name: "index_despesas_on_tipo_despesa_id"
  end

  create_table "legislaturas", force: :cascade do |t|
    t.integer "nuLegislatura"
  end

  create_table "tipo_despesas", force: :cascade do |t|
    t.string "txtDescricao", null: false
  end

  add_foreign_key "deputados", "legislaturas"
  add_foreign_key "despesas", "deputados"
  add_foreign_key "despesas", "tipo_despesas"
end
