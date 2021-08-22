require 'csv'

class Arquivo

  def self.loadfile(file)
    store_data(file)
  end

  private
  def self.store_data(file)
    list_legislaturas = []
    list_tipodespesas = []
    list_deputados = []
    list_despesas = []

    CSV.foreach(file, headers: true) do |row|

      #ignora as linhas sem dados de deputados
      next if row['ideCadastro'].nil?
      
      hash_legislatura = Legislatura.parse_legislatura(row)
      unless list_legislaturas.include?(hash_legislatura)
        list_legislaturas << hash_legislatura
      end

      hash_tipodespesa = TipoDespesa.parse_tipodespesa(row)
      unless list_tipodespesas.include?(hash_tipodespesa)
        list_tipodespesas << hash_tipodespesa
      end
      
      hash_deputado = Deputado.parse_deputado(row)
      unless list_deputados.include?(hash_deputado)
        list_deputados << hash_deputado
      end

      hash_despesa = Despesa.parse_despesa(row)
      list_despesas << hash_despesa
    
    end
    #byebug
    Legislatura.import! list_legislaturas
    TipoDespesa.import! list_tipodespesas
    Deputado.import! list_deputados
    Despesa.import! list_despesas
  end

  private 
end