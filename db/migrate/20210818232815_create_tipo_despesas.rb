class CreateTipoDespesas < ActiveRecord::Migration[6.0]
  def change
    create_table :tipo_despesas do |t|
      t.string :txtDescricao, null: false
    end
  end
end
