class AddTipoDespesaToDespesa < ActiveRecord::Migration[6.0]
  def change
    add_reference :despesas, :tipo_despesa, foreign_key: true
  end
end
