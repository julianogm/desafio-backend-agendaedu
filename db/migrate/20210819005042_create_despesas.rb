class CreateDespesas < ActiveRecord::Migration[6.0]
  def change
    create_table :despesas do |t|
      t.string :txtFornecedor
      t.string :txtCNPJCPF
      t.string :txtNumero, null: false
      t.string :indTipoDocumento
      t.text :txtPassageiro
      t.text :txtTrecho
      t.datetime :datEmissao
      t.decimal :vlrDocumento, null: false
      t.decimal :vlrGlosa, null: false
      t.decimal :vlrLiquido, null: false
      t.integer :numMes
      t.integer :numAno
      t.integer :numParcela
      t.integer :numLote
      t.integer :numRessarcimento
      t.decimal :vlrRestituicao
      t.integer :nuDeputadoId
      t.integer :ideDocumento
      t.text :urlDocumento
    end
  end
end
