class TipoDespesa < ApplicationRecord
  has_many :despesas

  validates :txtDescricao, presence: true

  def self.parse_tipodespesa(row)
    hash_tipodespesa = {
      "id" => row['numSubCota'].to_i, 
      "txtDescricao" => row['txtDescricao'], 
    }
    hash_tipodespesa
  end
end