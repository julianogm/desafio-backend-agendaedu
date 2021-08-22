class Deputado < ApplicationRecord
  belongs_to :legislatura
  has_many :despesa

  validates :txNomeParlamentar, presence: true
  validates :cpf, presence: true , length: { is: 11 }
  validates :nuCarteiraParlamentar, presence: true
  validates :sgUF, presence: true

  scope :filtrar_estado, -> (sgUF) { where sgUF: sgUF }


  def calcular_gasto(list)
    gastototal(list)
  end

  def self.parse_deputado(row)

    # Ajusta a quantidade de Digitos. No arquivo csv, há cpfs com menos de 11 digitos, pois iniciam com 0
    row['cpf'].length >= 11 ? cpfAjustado = row['cpf'] : cpfAjustado = row['cpf'].rjust(11,'0')
    
    hash_deputado = {
      "id" => row['ideCadastro'].to_i,
      "txNomeParlamentar" => row['txNomeParlamentar'],
      "cpf" => cpfAjustado,
      "nuCarteiraParlamentar" => row['nuCarteiraParlamentar'].to_i, 
      "sgUF" => row['sgUF'],
      "sgPartido" => row['sgPartido'],
      "legislatura_id" => row['codLegislatura']
    }
    hash_deputado
  end
  
  private
  def gastototal(list_despesas)
    total_gasto = 0.0
    list_despesas.each do |item|
      total_gasto = item.vlrLiquido + total_gasto
    end
    total_gasto
  end
end