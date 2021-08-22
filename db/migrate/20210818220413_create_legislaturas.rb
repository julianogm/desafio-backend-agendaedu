class CreateLegislaturas < ActiveRecord::Migration[6.0]
  def change
    create_table :legislaturas do |t|
      t.integer :nuLegislatura
    end
  end
end
