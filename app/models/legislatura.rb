class Legislatura < ApplicationRecord
  has_many :deputados

  def self.parse_legislatura(row)
    hash_legislatura =  {
      "id" => row['codLegislatura'].to_i,
      "nuLegislatura" => row['nuLegislatura'].to_i
    }
    hash_legislatura
  end
end