class AddDeputadoToDespesa < ActiveRecord::Migration[6.0]
  def change
    add_reference :despesas, :deputado, foreign_key: true
  end
end
