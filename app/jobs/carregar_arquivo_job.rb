require 'csv'

class CarregarArquivoJob < ApplicationJob
  queue_as :default
  
  def perform(filepath)
    store_data(filepath)
  end

  def store_data(filepath)
    list_legislaturas = []
    list_tipodespesas = []
    list_deputados = []
    list_despesas = []

    CSV.foreach(filepath, headers: true) do |row|

      #ignora as linhas sem dados de deputados
      next if row['ideCadastro'].nil?
      
      hash_legislatura = Legislatura.parse_legislatura(row)
      unless list_legislaturas.include?(hash_legislatura)
        list_legislaturas.append(hash_legislatura)
      end

      hash_tipodespesa = TipoDespesa.parse_tipodespesa(row)
      unless list_tipodespesas.include?(hash_tipodespesa)
        list_tipodespesas.append(hash_tipodespesa)
      end
      
      hash_deputado = Deputado.parse_deputado(row)
      unless list_deputados.include?(hash_deputado)
        list_deputados.append(hash_deputado)
      end

      hash_despesa = Despesa.parse_despesa(row)
      list_despesas.append(hash_despesa)
    
    end
    #byebug
    Legislatura.import! list_legislaturas
    TipoDespesa.import! list_tipodespesas
    Deputado.import! list_deputados
    Despesa.import! list_despesas
  end

end