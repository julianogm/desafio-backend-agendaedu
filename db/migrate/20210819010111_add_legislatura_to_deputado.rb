class AddLegislaturaToDeputado < ActiveRecord::Migration[6.0]
  def change
    add_reference :deputados, :legislatura, foreign_key: true
  end
end
