class CreateDeputados < ActiveRecord::Migration[6.0]
  def change
    create_table :deputados do |t|
      t.string :txNomeParlamentar, null: false
      t.string :cpf, null: false, limit: 11
      t.integer :nuCarteiraParlamentar, null: false
      t.string :sgUF, null: false
      t.string :sgPartido
    end
  end
end
