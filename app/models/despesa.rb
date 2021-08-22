class Despesa < ApplicationRecord
  belongs_to :deputado
  belongs_to :tipo_despesa

  validates :txtNumero, presence: true
  validates :vlrLiquido, presence: true
  validates :vlrGlosa, presence: true
  validates :vlrDocumento, presence: true
  
  def self.parse_despesa(row)
    hash_despesa = { 
      "txtFornecedor" => row['txtFornecedor'], 
      "txtCNPJCPF" => row['txtCNPJCPF'], 
      "txtNumero" => row['txtNumero'], 
      "indTipoDocumento" => row['indTipoDocumento'],
      "txtPassageiro" => row['txtPassageiro'], 
      "txtTrecho" => row['txtTrecho'], 
      "datEmissao" => row['datEmissao'],
      "vlrDocumento" => row['vlrDocumento'].to_d, 
      "vlrGlosa" => row['vlrGlosa'].to_d, 
      "vlrLiquido" => row['vlrLiquido'].to_d, 
      "numMes" => row['numMes'].to_i, 
      "numAno" => row['numAno'].to_i,
      "numParcela" => row['numParcela'].to_i, 
      "numLote" => row['numLote'].to_i, 
      "numRessarcimento" => row['numRessarcimento'].to_i, 
      "vlrRestituicao" => row['vlrRestituicao'].to_d, 
      "nuDeputadoId" => row['nuDeputadoId'].to_i, 
      "urlDocumento" => row['urlDocumento'],
      "deputado_id" => row['ideCadastro'],
      "tipo_despesa_id" => row['numSubCota']
    }
    hash_despesa
  end
end